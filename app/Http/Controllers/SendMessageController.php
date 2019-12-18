<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;
class SendMessageController extends Controller
{
    //
    public function createForm() {

        $data = [
            'title'=> 'test mail',
            'body' => 'xin chao' ,
        ];

        Mail::to('duongth52@wru.vn')
        ->send(new sendMail($data));

    }
}
