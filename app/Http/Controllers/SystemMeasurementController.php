<?php

namespace App\Http\Controllers;

use App\SystemMeasurement;
use App\Category;
use Illuminate\Http\Request;

class SystemMeasurementController extends Controller
{
    /**
     * Display a listing of the resource.
     *system_measurements
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = SystemMeasurement::leftjoin('categories','system_measurements.categories_id','=','categories.id')
                    ->select('system_measurements.*','categories.name as cat_name')
                    ->get();
        $cat = Category::all();
        return view('apps.admin.pages.system_measurements',['cat'=>$cat,'data'=>$data]);
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
            'size'=>'required',
            'bust'=>'required',
            'waist'=>'required',
            'hip'=>'required',
        ]);
       // echo $request->name;
       // exit();

        $tab = new SystemMeasurement;
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->size = $request->size;
        $tab->bust = $request->bust;
        $tab->waist = $request->waist;
        $tab->hip = $request->hip;
        $tab->save();
        return redirect('SystemMeasurement')->with('status', 'System Measurement created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SystemMeasurement  $systemMeasurement
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = SystemMeasurement::leftjoin('categories','system_measurements.categories_id','=','categories.id')
                    ->select('system_measurements.*','categories.name as cat_name')
                    ->get();
        $edit = SystemMeasurement::find($id);
        $cat = Category::all();
        // dd($edit);
        return view('apps.admin.pages.system_measurements',['data'=>$data,'cat'=>$cat,'edit'=>$edit]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SystemMeasurement  $systemMeasurement
     * @return \Illuminate\Http\Response
     */
    public function edit(SystemMeasurement $systemMeasurement)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SystemMeasurement  $systemMeasurement
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tab = SystemMeasurement::find($id);
        $tab->name = $request->name;
        $tab->categories_id = $request->cat_id;
        $tab->size = $request->size;
        $tab->bust = $request->bust;
        $tab->waist = $request->waist;
        $tab->hip = $request->hip;
        $tab->save();
        return redirect('SystemMeasurement')->with('status', 'System Measurement Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SystemMeasurement  $systemMeasurement
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tab = SystemMeasurement::find($id);
        $tab->delete();
        return redirect('SystemMeasurement')->with('status', 'System Measurement destroy Successfully!');
    }
}
