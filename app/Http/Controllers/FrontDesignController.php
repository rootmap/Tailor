<?php

namespace App\Http\Controllers;

use App\FrontDesign;
use App\Category;
use Illuminate\Http\Request;

class FrontDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *front_designs
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = FrontDesign::leftjoin('categories','front_designs.categories_id','=','categories.id')
                    ->select('front_designs.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.front_designs',['cat'=>$cat,'data'=>$data]);
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
            'cat_id'=>'required',
            'image'=>'required',
            'price'=>'required',
        ]);
       // echo $request->name;
       // exit();
       $filename = "";
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FrontDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new FrontDesign;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FrontDesign')->with('status', 'Front Design created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FrontDesign  $frontDesign
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = FrontDesign::leftjoin('categories','front_designs.categories_id','=','categories.id')
                    ->select('front_designs.*','categories.name as cat_name')
                    ->get();
        $edit = FrontDesign::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.front_designs',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FrontDesign  $frontDesign
     * @return \Illuminate\Http\Response
     */
    public function edit(FrontDesign $frontDesign)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FrontDesign  $frontDesign
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FrontDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = FrontDesign::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FrontDesign')->with('status', 'Front Design created Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FrontDesign  $frontDesign
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = FrontDesign::find($id);
        $tab->delete();
        return redirect('FrontDesign')->with('status', 'Front Design destroy Successfully!');
    }
}
