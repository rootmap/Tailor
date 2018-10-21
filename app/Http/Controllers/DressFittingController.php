<?php

namespace App\Http\Controllers;

use App\DressFitting;
use App\Category;
use Illuminate\Http\Request;

class DressFittingController extends Controller
{
    /**
     * Display a listing of the resource.
     *dress_fittings
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DressFitting::leftjoin('categories','dress_fittings.categories_id','=','categories.id')
                    ->select('dress_fittings.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.dress_fittings',['cat'=>$cat,'data'=>$data]);
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
            'cat_id'=>'required'
        ]);
       // echo $request->name;
       // exit();
       
        $tab = new DressFitting;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->save();
        return redirect('DressFitting')->with('status', 'Components Name created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DressFitting  $dressFitting
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = DressFitting::leftjoin('categories','dress_fittings.categories_id','=','categories.id')
                    ->select('dress_fittings.*','categories.name as cat_name')
                    ->get();
        $edit = DressFitting::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.dress_fittings',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DressFitting  $dressFitting
     * @return \Illuminate\Http\Response
     */
    public function edit(DressFitting $dressFitting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DressFitting  $dressFitting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = DressFitting::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->save();
        return redirect('DressFitting')->with('status', 'Dress Fitting Name updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DressFitting  $dressFitting
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = DressFitting::find($id);
        $tab->delete();
        return redirect('DressFitting')->with('status', 'Dress Fitting Name destroy Successfully!');
    }
}
