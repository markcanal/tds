@extends('layouts.main')
@section('main_content')
		
				<div class="row">
                    <div class="col-lg-12">
                        <!--<h4 class="page-header">
                           <small>Statistics Overview</small>
                        </h4>-->

                        <ol class="breadcrumb">
                            <li >
                                <i class="fa fa-home"></i> 
                                <a href="{{route('index')}}" >Home</a>
                            </li>
                            <li class="active">
                            <i class="fa fa-share-alt"></i> 
                             Supplier
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                	<div class="col-lg-12">
		                <div class="panel panel-yellow">
		                	<div class="panel-heading">
		                	<span class="fa fa-share-alt fa-fw"></span> Supplier Table
		                	</div>
		                	<div class="table-responsive">
		                	<div class="panel-body " >
		                	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" style="font-size: 12px;">
		                		<thead>
		                			<tr>
		                				<th><span class="fa fa-user fa-fw"></span>Supplier Name</th>
		                				<th><span class="fa fa-mobile fa-fw"></span>Contact Information</th>
		                				<th><span class="fa fa-user fa-fw"></span>Contact Person</th>
		                				<th><span class="fa fa-building-o fa-fw"></span>Address</th>
		                				<th><span class="fa fa-plus fa-fw"></span><span class="fa fa-edit fa-fw">Action</span></th>	
		                			</tr>
		                		</thead>
		                			<tbody>
		                			@foreach($supl as $suplier)
		                				<tr>
		                					<th>{{$suplier->Name}}</th>
		                					<th>{{$suplier->contact}}</th>
		                					<th>{{$suplier->person}}</th>
		                					<th>{{$suplier->saddress}}</th>
		                					<th><a href="#myModal" role="button" class="white btn btn-info btn-xs" id="btn-new" data-toggle="modal"><i class="fa fa-plus fa-fw" ></i> Add<!--<button class="btn btn-info btn-xs" onclick="new_request();">  Add  </button>--></a>
		                					<a href="#myModal" role="button" class="white btn btn-warning btn-xs" id="btn-new" data-toggle="modal"><i class="fa fa-edit" ></i>  Edit <!--<button class="btn btn-info btn-xs" onclick="new_request();">  Add  </button>--></a>
		                					<!--<button class="btn btn-warning btn-xs">Edit</button>--></th>
		                					</th>
		                				</tr>
		                			@endforeach		                				
		                			</tbody>
		                				<tfoot>
		                					
		                				</tfoot>
		                			
		                		
		                	</table>

		                	<div class="panel-footer" style="text-align: center"></div>
		                	</div>
		                </div>
		            </div>
                </div></div>

		
		<!--MOdal-->
		<div id="myModal" class="modal fade">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title">Add new item from supplier</h4>
		            </div>
		            <div class="modal-body">
		                <div class="modal-panel panel-primary">
		                	<div class="panel-header"><h3>Ang Header ng Panel sa Modal mo</h3></div>
		                	<div class="panel-body"></div>
		                	<div class="panel-footer"></div>
		                </div>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		                <button type="button" class="btn btn-primary">Save changes</button>
		            </div>
		        </div>
		    </div>
		</div>
@stop
@section('scripting')
<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
 @stop