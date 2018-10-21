<?php

namespace App\Http\Controllers;

use App\Faq;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Faq::all();
        return view('apps.admin.pages.site.Faq',['data'=>$data]);
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
       // dd($request);
        $tab = new Faq;
        $tab->title = $request->title;
        $tab->content = $request->content;
        $tab->save();
        return redirect('Faq')->with('status', 'Faq created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Faq  $faq
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $edit = Faq::find($id);
        $data = Faq::all();
        return view('apps.admin.pages.site.Faq',['data'=>$data,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Faq  $faq
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Faq  $faq
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = Faq::find($id);
        $tab->title = $request->title;
        $tab->content = $request->content;
        $tab->save();
        return redirect('Faq')->with('status', 'Faq updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Faq  $faq
     * @return \Illuminate\Http\Response
     */
    public function destroy(Faq $faq,$id=0)
    {
        $tab = Faq::find($id);
        $tab->delete();
        return redirect('Faq')->with('status', 'Faq destroy Successfully!');
    }
}
