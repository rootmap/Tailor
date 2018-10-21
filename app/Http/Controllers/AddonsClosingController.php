<?php

namespace App\Http\Controllers;

use App\AddonsClosing;
use App\Category;
use Illuminate\Http\Request;

class AddonsClosingController extends Controller
{
    /**
     * Display a listing of the resource.
     *addons_closings
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = AddonsClosing::leftjoin('categories','addons_closings.categories_id','=','categories.id')
                    ->select('addons_closings.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.addons_closings',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/AddonsClosing/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new AddonsClosing;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsClosing')->with('status', 'Addons Closing created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AddonsClosing  $addonsClosing
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = AddonsClosing::leftjoin('categories','addons_closings.categories_id','=','categories.id')
                    ->select('addons_closings.*','categories.name as cat_name')
                    ->get();
        $edit = AddonsClosing::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.addons_closings',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AddonsClosing  $addonsClosing
     * @return \Illuminate\Http\Response
     */
    public function edit(AddonsClosing $addonsClosing)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AddonsClosing  $addonsClosing
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/AddonsClosing/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = AddonsClosing::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsClosing')->with('status', 'Addons Closing Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AddonsClosing  $addonsClosing
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = AddonsClosing::find($id);
        $tab->delete();
        return redirect('AddonsClosing')->with('status', 'Addons Closing destroy Successfully!');
    }
}
