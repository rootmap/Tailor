<?php

namespace App\Http\Controllers;

use App\BackDesign;
use App\Category;
use Illuminate\Http\Request;

class BackDesignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = BackDesign::leftjoin('categories','back_designs.categories_id','=','categories.id')
                    ->select('back_designs.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.back_designs',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/BackDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new BackDesign;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('BackDesign')->with('status', 'Back Design created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\BackDesign  $backDesign
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = BackDesign::leftjoin('categories','back_designs.categories_id','=','categories.id')
                    ->select('back_designs.*','categories.name as cat_name')
                    ->get();
        $edit = BackDesign::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.back_designs',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\BackDesign  $backDesign
     * @return \Illuminate\Http\Response
     */
    public function edit(BackDesign $backDesign)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\BackDesign  $backDesign
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/BackDesign/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = BackDesign::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('BackDesign')->with('status', 'Back Design created Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\BackDesign  $backDesign
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = BackDesign::find($id);
        $tab->delete();
        return redirect('BackDesign')->with('status', 'Back Design destroy Successfully!');
    }
}
