<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use Session;
Session_start();

class ManufactureController extends Controller
{

	public function index()
	{
        $this->AdminAuth();
		return view('admin.add-manufacture');
	}


	public function save_manufacture(Request $request)
	{
		$data=array();
    		$data['manufacture_id']=$request->manufacture_id;
    		$data['manufacture_name']=$request->manufacture_name;
    		$data['manufacture_description']=$request->manufacture_description;
    		$data['publication_status']=$request->publication_status;

    		DB::table('tbl_manufacture')->insert($data);
    		Session::put('message','Manufacture added successfully !!');
    		return Redirect::to('/add-manufacture');
	}
    
	 Public function all_manufacture(){
        $this->AdminAuth();
    	$all_manufacture_info=DB::table('tbl_manufacture')->get();
    	$manage_manufacture=view('admin.all-manufacture')
    					->with('all_manufacture_info',$all_manufacture_info);
    					return view('admin_layout')
    					->with('admin.all-manufacture',$manage_manufacture);

     }


     public function unactive_manufacture($manufacture_id)
    {
    	
    	DB::table('tbl_manufacture')
    		->where('manufacture_id',$manufacture_id)
    		->update(['publication_status' => 0]);
    		Session::put('message','Manufacture Unactive successfully !!');
    		return Redirect::to('/all-manufacture');
    }

     public function active_manufacture($manufacture_id)
    {
    	
    	DB::table('tbl_manufacture')
    		->where('manufacture_id',$manufacture_id)
    		->update(['publication_status' => 1]);
    		Session::put('message','Manufacture active successfully !!');
    		return Redirect::to('/all-manufacture');
    }


     public function edit_manufacture($manufacture_id)
    {

    	//return view('admin.edit_category');
    	$manufacture_info=DB::table('tbl_manufacture')
    		   ->where('manufacture_id',$manufacture_id)
    		   ->first();

    		$manufacture_info=view('admin.edit_manufacture')
    				->with('manufacture_info',$manufacture_info);
    		return view('admin_layout')
    				->with('admin.edit-manufacture',$manufacture_info);
    }


     public function update_manufacture(Request $request, $manufacture_id)
     {
     	$data=array();
     	$data['manufacture_name']=$request->manufacture_name;
     	$data['manufacture_description']=$request->manufacture_description;

     	DB::table('tbl_manufacture')
     		->where('manufacture_id', $manufacture_id)
     		->update($data);

     	Session::put('message','Manufacture Update successfully !!');

     	return Redirect::to('/all-manufacture');

     }

      public function delete_manufacture($manufacture_id)
      {
      	DB::table('tbl_manufacture')
      		->where('manufacture_id',$manufacture_id)
      		->delete();

      	Session::put('message','Delete Manufacture successfully !');
      	return Redirect::to('/all-manufacture');
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
