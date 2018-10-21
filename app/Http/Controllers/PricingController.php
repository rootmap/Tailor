<?php

namespace App\Http\Controllers;

use App\Pricing;
use Illuminate\Http\Request;

class PricingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Pricing::all();
        return view('apps.admin.pages.site.Pricing',['data'=>$data]);
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
            'image'=>'required',
            'price'=>'required',
        ]);
       // echo $request->name;
       // exit();
       $filename = "";
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/Pricing/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new Pricing;
        $tab->name = $request->name;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('Pricing')->with('status', 'Pricing created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $edit = Pricing::find($id);
        // dd($edit);
        $data = Pricing::all();
        // dd($edit);
        return view('apps.admin.pages.site.Pricing',['data'=>$data,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function edit(Pricing $pricing)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pricing $pricing,$id=0)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/Pricing/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = Pricing::find($id);;
        $tab->name = $request->name;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('Pricing')->with('status', 'Pricing Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = Pricing::find($id);
        $tab->delete();
        return redirect('Pricing')->with('status', 'Pricing destroy Successfully!');
    }
}
