<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use Session;
Session_start();

class CategoryController extends Controller
{
    
    Public function index(){
      $this->AdminAuth();

    	return view('admin.add-category');
    }
    

    Public function allcategory(){
      $this->AdminAuth();
    	$all_category_info=DB::table('tbl_category')->get();
    	$manage_category=view('admin.all-category')
    					->with('all_category_info',$all_category_info);
    					return view('admin_layout')
    					->with('admin.all-category',$manage_category);

    	//return view('admin.all_category');
    }

    Public function savecategory(Request $request)
    {
    	$data=array();
    		$data['category_id']=$request->category_id;
    		$data['category_name']=$request->category_name;
    		$data['category_description']=$request->category_description;
    		$data['publication_status']=$request->publication_status;

    		DB::table('tbl_category')->insert($data);
    		Session::put('message','Category added successfully !!');
    		return Redirect::to('/add-category');
    }

    public function unactive_category($category_id)
    {
    	
    	DB::table('tbl_category')
    		->where('category_id',$category_id)
    		->update(['publication_status' => 0]);
    		Session::put('message','Category Unactive successfully !!');
    		return Redirect::to('/all-category');
    }

     public function active_category($category_id)
    {
    	
    	DB::table('tbl_category')
    		->where('category_id',$category_id)
    		->update(['publication_status' => 1]);
    		Session::put('message','Category active successfully !!');
    		return Redirect::to('/all-category');
    }


     public function edit_category($category_id)
    {
      $this->AdminAuth();
    	//return view('admin.edit_category');
    	$category_info=DB::table('tbl_category')
    		   ->where('category_id',$category_id)
    		   ->first();

    		$category_info=view('admin.edit_category')
    				->with('category_info',$category_info);
    		return view('admin_layout')
    				->with('admin.edit-category',$category_info);
    }


     public function update_category(Request $request, $category_id)
     {
     	$data=array();
     	$data['category_name']=$request->category_name;
     	$data['category_description']=$request->category_description;

     	DB::table('tbl_category')
     		->where('category_id', $category_id)
     		->update($data);

     	Session::put('message','Category Update successfully !!');

     	return Redirect::to('/all-category');

     }

      public function delete_category($category_id)
      {
      	DB::table('tbl_category')
      		->where('category_id',$category_id)
      		->delete();

      	Session::put('message','Delete Category successfully !');
      	return Redirect::to('/all-category');
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
