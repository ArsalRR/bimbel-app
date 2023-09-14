<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class User extends BaseController
{
    public function index()
    {
        return view('User/index');
    }
public function create(){
    $data = [ 'validation' => \Config\Services::validation()];
    return view('User/index',$data);
}
function Pay()  {
    // Set your Merchant Server Key
\Midtrans\Config::$serverKey = 'SB-Mid-server-mF31tGVbgY3Tge0OipQEfJz2';
\Midtrans\Config::$isProduction = false;
\Midtrans\Config::$isSanitized = true;
\Midtrans\Config::$is3ds = true;
$params = [  'transaction_details' => array(
'order_id' => rand(),
'gross_amount' => 1200000,
)];
$data =['snapToken' => \Midtrans\Snap::getSnapToken($params)];

return view('Midtrans/Payment',$data); 
}
}
