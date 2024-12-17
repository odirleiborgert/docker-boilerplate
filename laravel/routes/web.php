<?php

use App\Mail\SendMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {

    Mail::to('recipient@example.com')->send(new SendMail());

    return view('welcome');
});
