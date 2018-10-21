<!DOCTYPE html>
<html lang="en" data-textdirection="LTR" class="loading">
    <head>
        <title>@yield('title') | Admin Panel</title>
        @include('apps.admin.include.headercss')
        @yield('css')
    </head>
    <body class="hold-transition fixed sidebar-mini">

        <div class="preloader"></div>
        <!-- main menu-->
        @include('apps.admin.include.main_menu')
        <!-- / main menu-->
        
                     
        <!-- Basic form layout section start -->
        @yield('content')
        
        <!-- // Basic form layout section end -->
               
        
        @include('apps.admin.include.footer')
        @include('apps.admin.include.footerJs')
        @yield('js')
    </body>
</html>
