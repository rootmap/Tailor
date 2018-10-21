<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pricing;
use App\AboutUs;
use App\Faq;
use App\FreePickup;
use App\OnlineStore;
use App\Slider;
use App\WhyUs;
class IndexController extends Controller
{
    public function index()
    {
        $Pricing = Pricing::all();
        $AboutUs = AboutUs::first();
        $FreePickup = FreePickup::all();
        $OnlineStore = OnlineStore::all();
        $WhyUs = WhyUs::all();
        // dd($Pricing);
        return view('apps.frontEnd.pages.index',['Pricing'=>$Pricing,'AboutUs'=>$AboutUs,'FreePickup'=>$FreePickup,'OnlineStore'=>$OnlineStore,'WhyUs'=>$WhyUs]);
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
}
