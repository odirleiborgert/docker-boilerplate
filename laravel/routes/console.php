<?php

use App\Console\Commands\SendmailTask;
use Illuminate\Support\Facades\Schedule;


Schedule::command(SendmailTask::class)->everyMinute();
