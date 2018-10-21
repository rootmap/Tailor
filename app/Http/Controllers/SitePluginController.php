<?php

namespace App\Http\Controllers;

use App\SitePlugin;
use App\Category;
use App\Component;
use App\AddonsClosing;
use App\AddonsDeliveryCategory;
use App\AddonsOther;
use App\AddonsTopLinning;
use App\BackDepthDesign;
use App\BackDesign;
use App\DressFitting;
use App\FabricType;
use App\FrontDepthDesign;
use App\FrontDesign;
use App\Measurement;
use App\SleeveDesign;
use App\SystemMeasurement;
use Illuminate\Http\Request;

class SitePluginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function SiteIndex()
    {
       $comp = Component::orderBy('id','ASC')->where('cat_id',3)->get();
       $Fabric = FabricType::orderBy('id','ASC')->where('categories_id',3)->get();
       $fitting = DressFitting::orderBy('id','ASC')->where('categories_id',3)->get();
       $FrontDesign = FrontDesign::orderBy('id','ASC')->where('categories_id',3)->get();
       $BackDesign = BackDesign::orderBy('id','ASC')->where('categories_id',3)->get();
       $FrontDepthDesign = FrontDepthDesign::orderBy('id','ASC')->where('categories_id',3)->get();
       $BackDepthDesign = BackDepthDesign::orderBy('id','ASC')->where('categories_id',3)->get();
       $SleeveDesign = SleeveDesign::orderBy('id','ASC')->where('categories_id',3)->get();
       $AddonsClosing = AddonsClosing::orderBy('id','ASC')->where('categories_id',3)->get();
       $AddonsDelivery = AddonsDeliveryCategory::orderBy('id','ASC')->where('categories_id',3)->get();
       $AddonsOther = AddonsOther::orderBy('id','ASC')->where('categories_id',3)->get();
       $AddonsTopLinning = AddonsTopLinning::orderBy('id','ASC')->where('categories_id',3)->get();
       $Measurement = Measurement::orderBy('id','ASC')->where('categories_id',3)->get();
       $SystemMeasurement = SystemMeasurement::orderBy('id','ASC')->where('categories_id',3)->get();
       // dd($AddonsDelivery);
       return view('apps.frontEnd.pages.plugin',
        [
            'comp'=>$comp,
            'fabric'=>$Fabric,
            'fitting'=>$fitting,
            'FrontDesign'=>$FrontDesign,
            'BackDesign'=>$BackDesign,
            'FrontDepthDesign'=>$FrontDepthDesign,
            'BackDepthDesign'=>$BackDepthDesign,
            'SleeveDesign'=>$SleeveDesign,
            'AddonsClosing'=>$AddonsClosing,
            'AddonsDelivery'=>$AddonsDelivery,
            'AddonsOther'=>$AddonsOther,
            'AddonsTopLinning'=>$AddonsTopLinning,
            'Measurement'=>$Measurement,
            'SystemMeasurement'=>$SystemMeasurement,
        ]); 
    }
    public function index()
    {
        return view('apps.frontEnd.pages.index');
    }
    public function pricing()
    {
        return view('apps.frontEnd.pages.pricing');
    }
    public function faq()
    {
        return view('apps.frontEnd.pages.faq');
    }
    public function account()
    {
        return view('apps.frontEnd.pages.account');
    }
    public function contact()
    {
        return view('apps.frontEnd.pages.contact');
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SitePlugin  $sitePlugin
     * @return \Illuminate\Http\Response
     */
    public function show(SitePlugin $sitePlugin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SitePlugin  $sitePlugin
     * @return \Illuminate\Http\Response
     */
    public function edit(SitePlugin $sitePlugin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SitePlugin  $sitePlugin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SitePlugin $sitePlugin)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SitePlugin  $sitePlugin
     * @return \Illuminate\Http\Response
     */
    public function destroy(SitePlugin $sitePlugin)
    {
        //
    }
}
