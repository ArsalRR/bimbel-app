<?php

namespace App\Controllers;

use App\Models\ModelBimbel;
class Admin extends BaseController
{
    protected $bimbelmodel;
    public function __construct()
    {
        $this->bimbelmodel = new ModelBimbel();
    }

    public function index()
    {
        $tombolcari = $this->request->getPost('tombolcari');

        if (isset($tombolcari)) {
            $cari = $this->request->getPost('cari');
            redirect()->to('/Admin/index');
        } else {
            $cari = session()->get('cari_judul');
        }

        $dataKategori = $cari ? $this->bimbelmodel->cariData($cari)->paginate(5, 'daftar') : $this->bimbelmodel->paginate(5, 'daftar');

        $nohalaman = $this->request->getVar('page_buku') ? $this->request->getVar('page_buku') : 1;
        $data = [
            'buku' => $dataKategori,
            'pager' => $this->bimbelmodel->pager,
            'nohalaman' => $nohalaman,


        ];
        return view('kategori/viewkategori', $data);
    }
    public function simpan()
    {
        if (!$this->validate(
            [
                'nama_lengkap' => [
                    'rules' => 'required|is_unique[daftar.nama_lengkap]',
                    'errors' => [
                        'required' => 'Nama Lengkap nama harus di isi.',
                        'is_unique' => 'Nama Lengkap nama sudah terdaftar'
                    ]

                ],
                'alamat' => [
                    'rules' => 'required|is_unique[daftar.alamat]',
                    'errors' => [
                        'required' => 'Alamat  harus di isi.',
                        'is_unique' => 'Alamat  sudah terdaftar'
                    ]

                ],
                'email' => [
                    'rules' => 'required|is_unique[daftar.email]',
                    'errors' => [
                        'required' => 'Email  harus di isi.',
                    ]


                ],
                'no_hp' => [
                    'rules' => 'required|is_unique[daftar.no_hp]',
                    'errors' => [
                        'required' => 'Nomer Handphone   harus di isi.',
                        'is_unique' => 'Nomer Handphone  sudah terdaftar'
                    ]


                ],
                'asal_sekolah' => [
                    'rules' => 'required|is_unique[daftar.asal_sekolah]',
                    'errors' => [
                        'required' => 'Asal Sekolah   harus di isi.',
                    ]
                    ]
            ]
        )) {
            $validation = \Config\Services::validation();
            return redirect()->to('/User')->withInput()->with('validation', $validation->getErrors());
        }

        $alias = url_title($this->request->getVar('nama_lengkap'), '-', true);
        $image = $this->request->getFile('bukti_trasfer');
        $newName = $image->getRandomName();

        $image->move(ROOTPATH . 'public/uploads', $newName);

        $userModel = new ModelBimbel();
        $userModel->save([
            'nama_lengkap' => $this->request->getPost('nama_lengkap'),
            'alamat' => $this->request->getPost('alamat'),
            'email' => $this->request->getPost('email'),
            'no_hp' => $this->request->getPost('no_hp'),
            'asal_sekolah' => $this->request->getPost('asal_sekolah'),
            'paket' => $this->request->getPost('paket'),
            'jurusan' => $this->request->getPost('jurusan'),
            'bukti_trasfer' => $newName,
            'alias'      => $alias
        ]);
        if ($userModel) {
            session()->setFlashdata('alert_success', 'Pendaftaran Berhasil Silahkan Tuggu informasi Dari Email');
            return redirect()->back();
        } else {
            session()->setFlashdata('alert_danger', 'Anda Sudah Mendaftar Bimbel');
            return redirect()->back()->withInput();
        }
        return redirect()->to('/User');
    }
    public function formemail($alias)
    {
        $data = [
            'validation' => \Config\Services::validation(),
            'buku' => $this->bimbelmodel->getBuku($alias)
        ];

        return view('kategori/formemail', $data);
    }
    public function sendEmail()
    {
        $email = \Config\Services::email();

        $toEmail = $this->request->getPost('email');
        $toName = $this->request->getPost('nama_lengkap');
        $email->setTo($toEmail);
        $email->setSubject('Surat Penerimaan');
        $email->setMessage('oleh bimbel rangking:
        Formulir Sudah Terpenuhi Selamat Bergabung : '.$toName);
        // $email->send();
        if ($email->send()) {
            // Email terkirim
            return redirect()->back()->with('berhasil', 'Email terkirim');
        } else {
            // Gagal mengirim email
            return redirect()->back()->with('gagal', 'Gagal mengirim email');
        }

    }
    public function delete($id)
    {
        $this->bimbelmodel->delete($id);
        return redirect()->to('/Admin')->with('berhasil','data Pendaftar Berhasil di Hapus');
    }
    public function update($id)
    {
        $alias = url_title($this->request->getVar('nama_lengkap'), '-', true);
        $this->bimbelmodel->save([
            'nama_lengkap'     => $this->request->getVar('nama_lengkap'),
            'id'      => $id,
            'alias' => $alias,
            'alamat'   => $this->request->getVar('alamat'),
            'email'  => $this->request->getVar('email'),
            'no_hp'  => $this->request->getVar('no_hp'),
            'asal_sekolah'     => $this->request->getVar('asal_sekolah'),
            'paket'     => $this->request->getVar('paket'),
            'jurusan'     => $this->request->getVar('jurusan'),
        ]);
        return redirect()->to('/Admin')->with('berhasil', 'data Pendaftar Berhasil Di update');

   
    }
    public function formedit($alias)
    {
        $data = [
            'validation' => \Config\Services::validation(),
            'buku' => $this->bimbelmodel->getBuku($alias)
        ];

        return view('kategori/formedit', $data);
    }        
    }

