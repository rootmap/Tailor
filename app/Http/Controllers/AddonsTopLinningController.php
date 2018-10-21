<?php

namespace App\Http\Controllers;

use App\AddonsTopLinning;
use App\Category;
use Illuminate\Http\Request;

class AddonsTopLinningController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = AddonsTopLinning::leftjoin('categories','addons_top_linnings.categories_id','=','categories.id')
                    ->select('addons_top_linnings.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.addons_top_linnings',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/AddonsTopLinning/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new AddonsTopLinning;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsTopLinning')->with('status', 'Addons Top Linning created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AddonsTopLinning  $addonsTopLinning
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = AddonsTopLinning::leftjoin('categories','addons_top_linnings.categories_id','=','categories.id')
                    ->select('addons_top_linnings.*','categories.name as cat_name')
                    ->get();
        $edit = AddonsTopLinning::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.addons_top_linnings',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AddonsTopLinning  $addonsTopLinning
     * @return \Illuminate\Http\Response
     */
    public function edit(AddonsTopLinning $addonsTopLinning)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AddonsTopLinning  $addonsTopLinning
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/AddonsTopLinning/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = AddonsTopLinning::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsTopLinning')->with('status', 'Addons Top Linning Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AddonsTopLinning  $addonsTopLinning
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = AddonsTopLinning::find($id);
        $tab->delete();
        return redirect('AddonsTopLinning')->with('status', 'Addons Top Linning destroy Successfully!');
    }
}
