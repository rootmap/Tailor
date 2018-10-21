<?php

namespace App\Http\Controllers;

use App\OnlineStore;
use Illuminate\Http\Request;

class OnlineStoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = OnlineStore::all();
        return view('apps.admin.pages.site.OnlineStore',['data'=>$data]);
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
            $upload = 'upload/OnlineStore/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new OnlineStore;
        $tab->title = $request->title;
        $tab->image = $$filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('OnlineStore')->with('status', 'Online Store created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OnlineStore  $onlineStore
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $edit = OnlineStore::find($id);
        // dd($edit);
        $data = OnlineStore::all();
        // dd($edit);
        return view('apps.admin.pages.site.OnlineStore',['data'=>$data,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OnlineStore  $onlineStore
     * @return \Illuminate\Http\Response
     */
    public function edit(OnlineStore $onlineStore)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OnlineStore  $onlineStore
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = OnlineStore::find($id);
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/OnlineStore/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab->title = $request->title;
        $tab->image = $filename;
        $tab->content = $request->content;
        $tab->save();
        return redirect('OnlineStore')->with('status', 'Online Store updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OnlineStore  $onlineStore
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = OnlineStore::find($id);
        $tab->delete();
        return redirect('OnlineStore')->with('status', 'Online Store destroy Successfully!');
    }
}
