<?php 

namespace App\helpers;
use Request;
use App\Log;
use Auth;

class Logs 
{
    public static function store($message)
    {
        $logs   =   [];
        $logs['ip']   = request()->ip();  
        $logs['action_method'] = Request::method();
        $logs['user_id']      = Auth()->user()->id;
        $logs['message']      = $message;
        Log::create($logs);
    }
}
