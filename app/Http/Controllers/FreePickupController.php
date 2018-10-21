<?php

namespace App\Http\Controllers;

use App\FreePickup;
use Illuminate\Http\Request;

class FreePickupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = FreePickup::all();
        return view('apps.admin.pages.site.FreePickup',['data'=>$data]);
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
            'image'=>'required',
            'content'=>'required',
        ]);
       // dd($request);
        $filename = "";
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FreePickup/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new FreePickup;
        $tab->title = $request->title;
        $tab->image = $filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('FreePickup')->with('status', 'Free Pickup created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FreePickup  $freePickup
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // dd(1);
        $edit = FreePickup::find($id);
        // dd($edit);
        $data = FreePickup::all();
        // dd($edit);
        return view('apps.admin.pages.site.FreePickup',['data'=>$data,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FreePickup  $freePickup
     * @return \Illuminate\Http\Response
     */
    public function edit(FreePickup $freePickup)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FreePickup  $freePickup
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id=0)
    {
        $tab = FreePickup::find($id);
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FreePickup/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab->title = $request->title;
        $tab->image = $filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('FreePickup')->with('status', 'Free Pickup updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FreePickup  $freePickup
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = FreePickup::find($id);
        $tab->delete();
        return redirect('FreePickup')->with('status', 'Free Pickup destroy Successfully!');
    }
}
