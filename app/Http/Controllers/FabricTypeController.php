<?php

namespace App\Http\Controllers;

use App\FabricType;
use App\Category;
use Illuminate\Http\Request;

class FabricTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *fabric_types
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = FabricType::leftjoin('categories','fabric_types.categories_id','=','categories.id')
                    ->select('fabric_types.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.fabric_types',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/FabricType/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new FabricType;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->fabric_length = $request->fabric_length ? $request->fabric_length:0;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FabricType')->with('status', 'Fabric Type created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FabricType  $fabricType
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = FabricType::leftjoin('categories','fabric_types.categories_id','=','categories.id')
                    ->select('fabric_types.*','categories.name as cat_name')
                    ->get();
        $edit = FabricType::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.fabric_types',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FabricType  $fabricType
     * @return \Illuminate\Http\Response
     */
    public function edit(FabricType $fabricType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FabricType  $fabricType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/FabricType/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = FabricType::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->fabric_length = $request->fabric_length ? $request->fabric_length:0;
        $tab->price = $request->price;
        $tab->save();
        return redirect('FabricType')->with('status', 'Fabric Type Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FabricType  $fabricType
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = FabricType::find($id);
        $tab->delete();
        return redirect('FabricType')->with('status', 'Fabric Type destroy Successfully!');
    }
}
