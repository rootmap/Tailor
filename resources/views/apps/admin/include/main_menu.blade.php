<header class="main-header"> 
    <a href="index.html" class="logo"> <!-- Logo -->
        <span class="logo-mini">
            <!--<b>A</b>H-admin-->
            <img src="{{url('theme/adminpix/assets/dist/img/logo-mini.png')}}" alt="img">
        </span>
        <span class="logo-lg">
            <!--<b>Admin</b>H-admin-->
            <img src="{{url('theme/adminpix/assets/dist/img/logo.png')}}" alt="img">
        </span>
    </a>
    <!-- Header Navbar -->
    {{-- topnavbar --}}
    @include('apps.admin.include.top_navbar')
    <aside class="main-sidebar">
        <!-- sidebar -->
        <div class="sidebar">
            <!-- sidebar menu -->
            <ul class="sidebar-menu">
                <li class="treeview">
                    <a href="">
                        <i class="ti-home"></i><span>Dashboard</span>
                        
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="ti-notepad"></i> <span>Site</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="treeview {{ Request::path() == 'SiteSetting' ? 'active' : '' }}"><a href="{{url('SiteSetting')}}"><i class="ti-pencil-alt"></i> <span>Site Setting</span></a></li>
                        <li class="treeview {{ Request::path() == 'Slider' ? 'active' : '' }}"><a href="{{url('Slider')}}"><i class="ti-pencil-alt"></i> <span>Slider</span></a></li>
                        <li class="treeview {{ Request::path() == 'AboutUs' ? 'active' : '' }}"><a href="{{url('AboutUs')}}"><i class="ti-pencil-alt"></i> <span>About Us</span></a></li>
                        <li class="treeview">
                            <a href="#">
                                <i class="ti-pencil-alt"></i> <span>How It Works</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a class="{{ Request::path() == 'FreePickup' ? 'active' : '' }}" href="{{url('FreePickup')}}"><i class="ti-pencil-alt"></i> Free Pickup</a></li>
                                <li><a class="{{ Request::path() == 'OnlineStore' ? 'active' : '' }}" href="{{url('OnlineStore')}}"><i class="ti-pencil-alt"></i> Online Store</a></li>
                            </ul>
                        </li>
                        <li class="treeview {{ Request::path() == 'WhyUs' ? 'active' : '' }}"><a href="{{url('WhyUs')}}"><i class="ti-pencil-alt"></i> <span>Why Us</span></a></li>
                        <li class="treeview {{ Request::path() == 'Pricing' ? 'active' : '' }}"><a href="{{url('Pricing')}}"><i class="ti-pencil-alt"></i> <span>Pricing</span></a></li>
                        <li class="treeview {{ Request::path() == 'Faq' ? 'active' : '' }}"><a href="{{url('Faq')}}"><i class="ti-pencil-alt"></i> <span>Faq</span></a></li>
                    </ul>
                </li>
                <li class="treeview {{ Request::path() == 'category' ? 'active' : '' }}">
                    <a href="{{url('category')}}">
                        <i class="ti-pencil-alt"></i> <span>Category</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'components' ? 'active' : '' }}">
                    <a href="{{url('components')}}">
                        <i class="ti-pencil-alt"></i> <span>Components</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'FabricType' ? 'active' : '' }}">
                    <a href="{{url('FabricType')}}">
                        <i class="ti-pencil-alt"></i> <span>Fabric Type</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'DressFitting' ? 'active' : '' }}">
                    <a href="{{url('DressFitting')}}">
                        <i class="ti-pencil-alt"></i> <span>Dress Fitting</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'FrontDesign' ? 'active' : '' }}">
                    <a href="{{url('FrontDesign')}}">
                        <i class="ti-pencil-alt"></i> <span>Front Design</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'BackDesign' ? 'active' : '' }}">
                    <a href="{{url('BackDesign')}}">
                        <i class="ti-pencil-alt"></i> <span>Back Design</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'FrontDepthDesign' ? 'active' : '' }}">
                    <a href="{{url('FrontDepthDesign')}}">
                        <i class="ti-pencil-alt"></i> <span>Front Depth Design</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'BackDepthDesign' ? 'active' : '' }}">
                    <a href="{{url('BackDepthDesign')}}">
                        <i class="ti-pencil-alt"></i> <span>Back Depth Design</span>
                    </a>
                </li>
                <li class="treeview {{ Request::path() == 'SleeveDesign' ? 'active' : '' }}">
                    <a href="{{url('SleeveDesign')}}">
                        <i class="ti-pencil-alt"></i> <span>Sleeve Design</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="ti-notepad"></i> <span>Addons</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="treeview {{ Request::path() == 'AddonsClosing' ? 'active' : '' }}"><a href="{{url('AddonsClosing')}}"><i class="ti-pencil-alt"></i> <span>Addons Closing</span></a></li>
                        <li class="treeview {{ Request::path() == 'AddonsDelivery' ? 'active' : '' }}"><a href="{{url('AddonsDelivery')}}"><i class="ti-pencil-alt"></i> <span>Addons Delivery</span></a></li>
                        <li class="treeview {{ Request::path() == 'AddonsOther' ? 'active' : '' }}"><a href="{{url('AddonsOther')}}"><i class="ti-pencil-alt"></i> <span>Addons Other</span></a></li>
                        <li class="treeview {{ Request::path() == 'AddonsTopLinning' ? 'active' : '' }}"><a href="{{url('AddonsTopLinning')}}"><i class="ti-pencil-alt"></i> <span>Addons Top Linning</span></a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="ti-notepad"></i> <span>Measurement</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="treeview {{ Request::path() == 'Measurement' ? 'active' : '' }}"><a href="{{url('Measurement')}}"><i class="ti-pencil-alt"></i> <span>Measurement</span></a></li>
                        <li class="treeview {{ Request::path() == 'SystemMeasurement' ? 'active' : '' }}"><a href="{{url('SystemMeasurement')}}"><i class="ti-pencil-alt"></i> <span>System Measurement</span></a></li>
                    </ul>
                </li>
                

                
            </ul>
        </div> <!-- /.sidebar -->
    </aside>
</header>