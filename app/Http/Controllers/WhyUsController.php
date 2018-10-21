<?php

namespace App\Http\Controllers;

use App\WhyUs;
use Illuminate\Http\Request;

class WhyUsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = WhyUs::all();
        return view('apps.admin.pages.site.WhyUs',['data'=>$data]);
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
            'image' => 'required',
            'content'=>'required',
        ]);
       // dd($request);
        $filename = "";
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/WhyUs/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new WhyUs;
        $tab->title = $request->title;
        $tab->image = $filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('WhyUs')->with('status', 'Why Us created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\WhyUs  $whyUs
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $edit = WhyUs::find($id);
        $data = WhyUs::all();
        return view('apps.admin.pages.site.WhyUs',['data'=>$data,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\WhyUs  $whyUs
     * @return \Illuminate\Http\Response
     */
    public function edit(WhyUs $whyUs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\WhyUs  $whyUs
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = WhyUs::find($id);
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/WhyUs/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab->title = $request->title;
        $tab->image = $filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('WhyUs')->with('status', 'Why Us updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\WhyUs  $whyUs
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = WhyUs::find($id);
        $tab->delete();
        return redirect('WhyUs')->with('status', 'Why Us destroy Successfully!');
    }
}
