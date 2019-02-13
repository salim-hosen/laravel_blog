<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use Session;

class SettingsController extends Controller
{

    public function __construct(){

    }

    public function index(){
      return view('admin.settings.setting')->with('setting',Setting::first());
    }

    public function update(){

      $this->validate(request(),[
        'site_name' => 'required',
        'contact_email' => 'required',
        'contact_number' => 'required',
        'address' => 'required'
      ]);

      $settings = Setting::first();

      $settings->site_name = request()->site_name;
      $settings->contact_email = request()->contact_email;
      $settings->contact_number = request()->contact_number;
      $settings->address = request()->address;

      $settings->save();

      Session::flash('success','Site Settings Changed Successfully.');

      return redirect()->back();
    }
}
