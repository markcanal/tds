<!DOCTYPE html>
<html lang ="{{config('app.locale')}}">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="apple-touch-icon" sizes="57x57" href="{{URL::asset('img/apple-icon-57x57.png')}}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{URL::asset('img/apple-icon-60x60.png')}}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{URL::asset('img/apple-icon-72x72.png')}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{URL::asset('img/apple-icon-76x76.png')}}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{URL::asset('img/apple-icon-114x114.png')}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{URL::asset('img/apple-icon-120x120.png')}}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{URL::asset('img/apple-icon-144x144.png')}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{URL::asset('img/apple-icon-152x152.png')}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{URL::asset('img/apple-icon-180x180.png')}}">
    <link rel="icon" type="image/png" sizes="192x192"  href="{{URL::asset('img/android-icon-192x192.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{URL::asset('img/favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{URL::asset('img/favicon-96x96.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{URL::asset('img/favicon-16x16.png')}}">
    <link rel="manifest" href="{{URL::asset('img/manifest.json')}}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{URL::asset('img/ms-icon-144x144.png')}}">
    <meta name="theme-color" content="#ffffff">

	<title>ViralKnowledge™</title>


	 <!-- Bootstrap Core CSS -->
    <link href="{{URL::asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="{{URL::asset('vendor/metisMenu/metisMenu.min.css')}}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="{{URL::asset('dist/css/sb-admin-2.css')}}" rel="stylesheet">
    <link href="{{URL::asset('css/app.css')}}" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="{{URL::asset('vendor/morrisjs/morris.css')}}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="{{URL::asset('vendor/font-awesome-new/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="{{URL::asset('vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet')}}">
    <!-- DataTables Responsive CSS -->
    <link href="{{URL::asset('vendor/datatables-responsive/dataTables.responsive.css')}}" rel="stylesheet">
    
    <style>
        .datepicker{z-index:999999 !important; display: 'none'; position: 'relative';}

        th {
            dash: nowrap;
        }

    </style>

    @yield('jquery')
</head>

<body >
<div id="wrapper">
	<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{route('index')}}"><i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size: 20px"></style></i> Autoparts Inventory©</a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                   
                  
                     <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user-circle fa-fw"></i><small>Welcome!</small> {{Auth::user()->user_name}} <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="{{route('logout')}}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                   
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                	
            </ul>
            <!-- /.navbar-top-links -->
            <div class="navbar-default sidebar" role="navigation">
            	<div class="sidebar-nav navbar-collapse">
            		<ul class="nav" id="side-menu">
            			
                        	<li>
                            <a href="{{route('index')}}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        	</li>
                        
                            <li>
                        		<a href="#"><i class="fa fa-wrench fa-fw"></i> Stocks<span class="fa arrow"></span></a>
                          		 <ul class="nav nav-second-level">
                                        <li>
                                            <a href="/">On Stocks</a>
                                        </li>
                                        <li>
                                            <a href="/">Out of Stocks</a>
                                        </li>
                                 </ul>
                            <!-- /.nav-second-level -->
                            </li>

              
                        <li>
                        	<a href="#"><i class="fa fa-gear fa-fw"></i> Maintenance<span class="fa arrow"></span></a>
                          		 <ul class="nav nav-second-level">
                                	<li>
                                    	<a href="{{route('supplier')}}">Supplier</a>
                               	 	</li>
                                	<li>
                                    	<a href="{{route('material')}}">Materials</a>
                                	</li>
                                    <li>
                                        <a href="{{route('mechanic')}}">Departments</a>
                                    </li>
                                	
                                	<li>
                                		<a href="#">Reports<span class="fa arrow"></span></a>
                                		<ul class="nav nav-third-level">
                                			<li>
                                    			<a href="#">Issued Materials</a>
                                			</li>
                                			<li>
                                    			<a href="#">Received Materials</a>
                                			</li>
                                			
                                		</ul>
                                	</li>
                            	</ul>
                            <!-- /.nav-second-level -->
                        </li>


            		</ul>
            	</div>
            	<!-- /.sidebar-collapse -->
		 	</div>
            <!-- /.navbar-header -->
		</nav>

		
	
            <!-- /.navbar-static-side -->
		<div id = "page-wrapper">
			@yield ('main_content')
		</div>
			<!-- /#page-wrapper -->
               
                <a href="" class="back-to-top" style="display: inline;"">
 
                <i class="fa fa-angle-double-up"></i>
 
                </a>
    	       
           <div id="wrapper"> 
            <div class ="web-footer">
             <h5><p class="text-muted credit">Study about Laravel <small>March 2017</small><br><br><a href=""> ViralKnowledge™</a></smal></p></h5>
            </div>
            </div>
</div>
		<!-- /#wrapper -->
 <!-- jQuery -->
    <script src="{{URL::asset('vendor/jquery/jquery.min.js')}}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{URL::asset('vendor/bootstrap/js/bootstrap.min.js')}}"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="{{URL::asset('vendor/metisMenu/metisMenu.min.js')}}"></script>

    <!-- Morris Charts JavaScript -->
    <!--<script src="{{URL::asset('vendor/raphael/raphael.min.js')}}"></script>-->
    <!--<script src="{{URL::asset('vendor/morrisjs/morris.min.js')}}"></script>-->
    <!--<script src="{{URL::asset('data/morris-data.js')}}"></script>-->
  
      <!-- DataTables JavaScript -->
    <script src="{{URL::asset('vendor/datatables/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{URL::asset('vendor/datatables-plugins/dataTables.bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('vendor/datatables-responsive/dataTables.responsive.js')}}"></script>
 
    <!-- Flot Charts JavaScript -->
    <script src="{{URL::asset('vendor/flot/excanvas.min.js')}}"></script>
    <script src="{{URL::asset('vendor/flot/jquery.flot.js')}}"></script>
    <script src="{{URL::asset('vendor/flot/jquery.flot.pie.js')}}"></script>
    <script src="{{URL::asset('vendor/flot/jquery.flot.resize.js')}}"></script>
    <script src="{{URL::asset('vendor/flot/jquery.flot.time.js')}}"></script>
    <script src="{{URL::asset('vendor/flot-tooltip/jquery.flot.tooltip.min.js')}}"></script>
<!--    <script src="{{URL::asset('data/flot-data.js')}}"></script> -->
    
    <!-- Custom Theme JavaScript -->
    <script src="{{URL::asset('dist/js/sb-admin-2.js')}}"></script>
	
    <script type="text/javascript">
        jQuery(document).ready(function() {
        var offset = 00;
        var duration = 300;
        jQuery(window).scroll(function() {
        if (jQuery(this).scrollTop() > offset) {
        jQuery('.back-to-top').fadeIn(duration);
        } else {
        jQuery('.back-to-top').fadeOut(duration);
        }
        });
        jQuery('.back-to-top').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
        });
        });    
    </script>
	@yield('scripting')
</body>
</html>