<?php

namespace App\Http\Controllers\Examples;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class RedisController extends Controller
{


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(): string
    {

        // Optional 1
        $data = [
            'key1' => 'value1',
            'key2' => 'value2',
            'key3' => 'value3',
        ];

        Redis::mset($data);

        // Optional 2
        foreach ($data as $key => $value) {
            Redis::set($key, $value);
        }

        return 'Redis persist OK';
    }

    public function show(): string
    {
        return Redis::get('key1');
    }


}
