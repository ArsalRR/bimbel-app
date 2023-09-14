<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelBimbel extends Model
{
   
    protected $table            = 'daftar';
    protected $allowedFields    = [
        'nama_lengkap', 'alamat','email','no_hp','asal_sekolah','paket','jurusan','tanda_tangan','bukti_trasfer','alias'
    ];

    public function cariData($cari)
    {
        return $this->table('daftar')->like('nama_lengkap', $cari);
    }
    public function getBuku($alias = false)
    {
     
        if ($alias == false) {
            return $this->findAll();
        }
        return $this->where(['alias' => $alias])->first();
    }
}
