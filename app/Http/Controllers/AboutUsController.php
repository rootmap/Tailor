<?php

namespace App\Http\Controllers;

use App\AboutUs;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $SiteSetting = AboutUs::orderBy('id','desc')->count();
        // dd($SiteSetting);
        if($SiteSetting>0)
        {
            $SiteSetting = AboutUs::orderBy('id','desc')->first();
            return view('apps.admin.pages.site.AboutUs',['data'=>$SiteSetting]);
        }
        else
        {
            return view('apps.admin.pages.site.AboutUs');
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
            'title' => 'required',
            'content'=>'required',
        ]);
       
        $tab = new AboutUs;
        $tab->title = $request->title;
        $tab->content = $request->content;
        $tab->save();
        return redirect('AboutUs')->with('status', 'About Us created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AboutUs  $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function show(AboutUs $aboutUs)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AboutUs  $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function edit(AboutUs $aboutUs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AboutUs  $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AboutUs $aboutUs,$id=0)
    {
        $tab =AboutUs::find($id);
        $tab->title = $request->title;
        $tab->content = $request->content;
        $tab->save();
        return redirect('AboutUs')->with('status', 'Site Setting created Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AboutUs  $aboutUs
     * @return \Illuminate\Http\Response
     */
    public function destroy(AboutUs $aboutUs)
    {
        //
    }
}
