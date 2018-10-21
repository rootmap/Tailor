<?php

namespace App\Http\Controllers;

use App\BackDepthDesign;
use App\Category;
use Illuminate\Http\Request;

class BackDepthDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = BackDepthDesign::leftjoin('categories','back_depth_designs.categories_id','=','categories.id')
                    ->select('back_depth_designs.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.back_depth_designs',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/BackDepthDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new BackDepthDesign;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('BackDepthDesign')->with('status', 'Back Depth Design created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\BackDepthDesign  $backDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = BackDepthDesign::leftjoin('categories','back_depth_designs.categories_id','=','categories.id')
                    ->select('back_depth_designs.*','categories.name as cat_name')
                    ->get();
        $edit = BackDepthDesign::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.back_depth_designs',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\BackDepthDesign  $backDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function edit(BackDepthDesign $backDepthDesign)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\BackDepthDesign  $backDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/BackDepthDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = BackDepthDesign::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('BackDepthDesign')->with('status', 'Front Depth Design Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\BackDepthDesign  $backDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = BackDepthDesign::find($id);
        $tab->delete();
        return redirect('BackDepthDesign')->with('status', 'Back Depth Design destroy Successfully!');
    }
}
