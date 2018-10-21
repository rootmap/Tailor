<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cat = Category::orderBy('id','DESC')->get();
        // dd($cat);
        return view('apps.admin.pages.category',['cat'=>$cat]);
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
            
        ]);
       // echo $request->name;
       // exit();
       
        $tab = new Category;
        $tab->name = $request->name;
        $tab->save();
        return redirect('category')->with('status', 'Category Name created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cat = Category::orderBy('id','DESC')->get();
        $data =Category::find($id);
        return view('apps.admin.pages.category',['cat'=>$cat,'edit'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = Category::find($id);
        $tab->name = $request->name;
        $tab->save();
        return redirect('category')->with('status', 'Category Name updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = Category::find($id);
        $tab->delete();
        return redirect('category')->with('status', 'Category Name destroy Successfully!');
    }
}
