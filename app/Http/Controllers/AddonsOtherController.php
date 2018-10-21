<?php

namespace App\Http\Controllers;

use App\AddonsOther;
use App\Category;
use Illuminate\Http\Request;

class AddonsOtherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = AddonsOther::leftjoin('categories','addons_others.categories_id','=','categories.id')
                    ->select('addons_others.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.addons_others',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/AddonsOther/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new AddonsOther;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsOther')->with('status', 'Addons Other created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AddonsOther  $addonsOther
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = AddonsOther::leftjoin('categories','addons_others.categories_id','=','categories.id')
                    ->select('addons_others.*','categories.name as cat_name')
                    ->get();
        $edit = AddonsOther::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.addons_others',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AddonsOther  $addonsOther
     * @return \Illuminate\Http\Response
     */
    public function edit(AddonsOther $addonsOther)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AddonsOther  $addonsOther
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/AddonsOther/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = AddonsOther::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsOther')->with('status', 'Addons Other Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AddonsOther  $addonsOther
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = AddonsOther::find($id);
        $tab->delete();
        return redirect('AddonsOther')->with('status', 'Addons Other destroy Successfully!');
    }
}
