<?php

namespace App\Http\Controllers\Examples;

use App\Http\Controllers\Controller;
use App\Mail\SendMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redis;

class MailhogController extends Controller
{


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(): string
    {

        Mail::to('mailhog@example.com')->send(new SendMail());

        return 'Mailhog send OK';
    }

}
