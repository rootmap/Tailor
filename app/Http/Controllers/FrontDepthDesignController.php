<?php

namespace App\Http\Controllers;

use App\FrontDepthDesign;
use App\Category;
use Illuminate\Http\Request;

class FrontDepthDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = FrontDepthDesign::leftjoin('categories','front_depth_designs.categories_id','=','categories.id')
                    ->select('front_depth_designs.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.front_depth_designs',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/FrontDepthDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new FrontDepthDesign;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FrontDepthDesign')->with('status', 'Front Depth Design created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FrontDepthDesign  $frontDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function show( $id)
    {
        $data = FrontDepthDesign::leftjoin('categories','front_depth_designs.categories_id','=','categories.id')
                    ->select('front_depth_designs.*','categories.name as cat_name')
                    ->get();
        $edit = FrontDepthDesign::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.front_depth_designs',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FrontDepthDesign  $frontDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function edit(FrontDepthDesign $frontDepthDesign)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FrontDepthDesign  $frontDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FrontDepthDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = FrontDepthDesign::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FrontDepthDesign')->with('status', 'Front Depth Design Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FrontDepthDesign  $frontDepthDesign
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = FrontDepthDesign::find($id);
        $tab->delete();
        return redirect('FrontDepthDesign')->with('status', 'Front Depth Design destroy Successfully!');
    }
}
