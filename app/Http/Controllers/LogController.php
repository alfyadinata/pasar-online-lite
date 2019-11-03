<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Log;
use DataTables;
use App\helpers\Visitor;
use Auth;

class LogController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->check()) {
            if (Auth::user()->role_id == 4) {
                return redirect('/');
            }
        }
    }

    
    public function api(Request $request)
    {
        $logs =   Log::latest()->get();
        return DataTables::of($logs)->addIndexColumn()
                        ->addColumn('checker', function($row) {
                            $checker = '<div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                                        </div>';
                            return $checker;
                        } )
                        ->addColumn('ip', function($row) {
                            $ip     =   $row->ip;
                            return $ip;
                        } )
                        ->addColumn('message', function($row) {
                            $message     =   $row->message;
                            return $message;
                        } )
                        ->addColumn('user', function($row) {
                            $user     =   $row->user->email;
                            return $user;
                        } )
                        ->addColumn('method', function($row) {
                            $method     =   $row->action_method;
                            return $method;
                        } )
                        ->addColumn('action', function($row) {
                            $btn    =   '<a data-href="'.route("eCategory",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                                            '<a href="'.route("delCategory",$row->uuid).'" class="delete btn btn-danger">
                                            Hapus
                                        </a>';
                            return $btn;
                        })->rawColumns(['action','checker'])->make(true);
    }

    public function index()
    {
        return view('panel.logs.index');
    }
}
