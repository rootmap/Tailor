<?php

namespace App\Http\Controllers;

use App\Component;
use App\Category;
use Illuminate\Http\Request;

class ComponentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Component::leftjoin('categories','components.cat_id','=','categories.id')
                    ->select('components.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.components',['cat'=>$cat,'data'=>$data]);
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
       
        $tab = new Component;
        $tab->name = $request->name;
        $tab->cat_id = $request->cat_id;
        $tab->save();
        return redirect('components')->with('status', 'Components Name created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Component  $component
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Component::leftjoin('categories','components.cat_id','=','categories.id')
                    ->select('components.*','categories.name as cat_name')
                    ->get();
        $edit = Component::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.components',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Component  $component
     * @return \Illuminate\Http\Response
     */
    public function edit(Component $component)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Component  $component
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = Component::find($id);
        $tab->name = $request->name;
        $tab->cat_id = $request->cat_id;
        $tab->save();
        return redirect('components')->with('status', 'Components Name updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Component  $component
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = Component::find($id);
        $tab->delete();
        return redirect('components')->with('status', 'Components Name destroy Successfully!');
    }
}
