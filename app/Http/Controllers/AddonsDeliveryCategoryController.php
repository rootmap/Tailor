<?php

namespace App\Http\Controllers;

use App\AddonsDeliveryCategory;
use App\Category;
use Illuminate\Http\Request;

class AddonsDeliveryCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = AddonsDeliveryCategory::leftjoin('categories','addons_delivery_categories.categories_id','=','categories.id')
                    ->select('addons_delivery_categories.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.addons_delivery_categories',['cat'=>$cat,'data'=>$data]);
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
            $upload = 'upload/AddonsDelivery/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = new AddonsDeliveryCategory;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsDelivery')->with('status', 'Addons Delivery created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AddonsDeliveryCategory  $addonsDeliveryCategory
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = AddonsDeliveryCategory::leftjoin('categories','addons_delivery_categories.categories_id','=','categories.id')
                    ->select('addons_delivery_categories.*','categories.name as cat_name')
                    ->get();
        $edit = AddonsDeliveryCategory::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.addons_delivery_categories',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AddonsDeliveryCategory  $addonsDeliveryCategory
     * @return \Illuminate\Http\Response
     */
    public function edit(AddonsDeliveryCategory $addonsDeliveryCategory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AddonsDeliveryCategory  $addonsDeliveryCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $filename = $request->eximage;
        if (!empty($request->file('image'))) {
            $img = $request->file('image');
            $upload = 'upload/AddonsDelivery/';
            $filename = time() . "." . $img->getClientOriginalExtension();
            $success = $img->move($upload, $filename);
        }
        $tab = AddonsDeliveryCategory::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->image = $filename;
        $tab->price = $request->price;
        $tab->save();
        return redirect('AddonsDelivery')->with('status', 'Addons Delivery Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AddonsDeliveryCategory  $addonsDeliveryCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = AddonsDeliveryCategory::find($id);
        $tab->delete();
        return redirect('AddonsDelivery')->with('status', 'Addons Delivery destroy Successfully!');
    }
}
