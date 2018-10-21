<?php

namespace App\Http\Controllers;

use App\SleeveDesign;
use App\Category;
use Illuminate\Http\Request;

class SleeveDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *sleeve_designs
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = SleeveDesign::leftjoin('categories','sleeve_designs.categories_id','=','categories.id')
                    ->select('sleeve_designs.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.sleeve_designs',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/SleeveDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new SleeveDesign;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('SleeveDesign')->with('status', 'Sleeve Design created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SleeveDesign  $sleeveDesign
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = SleeveDesign::leftjoin('categories','sleeve_designs.categories_id','=','categories.id')
                    ->select('sleeve_designs.*','categories.name as cat_name')
                    ->get();
        $edit = SleeveDesign::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.sleeve_designs',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SleeveDesign  $sleeveDesign
     * @return \Illuminate\Http\Response
     */
    public function edit(SleeveDesign $sleeveDesign)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SleeveDesign  $sleeveDesign
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/SleeveDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = SleeveDesign::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('SleeveDesign')->with('status', 'Sleeve Design Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SleeveDesign  $sleeveDesign
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = SleeveDesign::find($id);
        $tab->delete();
        return redirect('SleeveDesign')->with('status', 'Sleeve Design destroy Successfully!');
    }
}
