<?php

namespace App\Http\Controllers;

use App\SiteSetting;
use Illuminate\Http\Request;

class SiteSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $SiteSetting = SiteSetting::orderBy('id','desc')->count();
        // dd($SiteSetting);
        if($SiteSetting>0)
        {
            $SiteSetting = SiteSetting::orderBy('id','desc')->first();
            return view('apps.admin.pages.site.SiteSetting',['data'=>$SiteSetting]);
        }
        else
        {
            return view('apps.admin.pages.site.SiteSetting');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'logo'=>'required',
            'email'=>'required',
            'contact_number'=>'required',
        ]);
       // echo $request->name;
       // exit();
       $filename = "";
        if (!empty($request->file('logo'))) {
            $img = $request->file('logo');
            $upload = 'upload/SiteSetting/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new SiteSetting;
        $tab->name = $request->name;
        $tab->logo = $filename;
        $tab->email = $request->email;
        $tab->contact_number = $request->contact_number;
        $tab->save();
        return redirect('SiteSetting')->with('status', 'Site Setting created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SiteSetting  $siteSetting
     * @return \Illuminate\Http\Response
     */
    public function show(SiteSetting $siteSetting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SiteSetting  $siteSetting
     * @return \Illuminate\Http\Response
     */
    public function edit(SiteSetting $siteSetting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SiteSetting  $siteSetting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SiteSetting $siteSetting,$id=0)
    {
        $filename = $request->eximage;
        if (!empty($request->file('logo'))) {
            $img = $request->file('logo');
            $upload = 'upload/SiteSetting/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = SiteSetting::find($id);;
        $tab->name = $request->name;
        $tab->logo = $filename;
        $tab->email = $request->email;
        $tab->contact_number = $request->contact_number;
        $tab->save();
        return redirect('SiteSetting')->with('status', 'Site Setting Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SiteSetting  $siteSetting
     * @return \Illuminate\Http\Response
     */
    public function destroy(SiteSetting $siteSetting)
    {
        //
    }
}
