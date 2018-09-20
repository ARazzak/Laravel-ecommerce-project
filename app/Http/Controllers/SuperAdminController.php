<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use Session;
Session_start();

class SuperAdminController extends Controller
{

	public function index()
	{
		$this->AdminAuth();
		return view('admin.dashboard');

	}

    public function logout()
    {
    	
    	Session::flush();
    	return Redirect('/admin');
    }

    public function AdminAuth()
    {
    	$admin_id = Session::get('admin_id');
    	if($admin_id)
    	{
    		return;
    	}else{
    		return Redirect::to('/admin')->send();
    	}
    }
}