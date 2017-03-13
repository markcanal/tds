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
		                <div class="panel panel-red">
		                	<div class="panel-heading">
		                	<span class="fa fa-share-alt fa-fw"></span> Supplier Table
		                	</div>
		                	<div class="table-responsive">
		                	<div class="panel-body">
		                	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
		                		<thead>
		                			<tr>
		                				<th><span class="fa fa-user fa-fw"></span>Supplier Name</th>
		                				<th><span class="fa fa-mobile fa-fw"></span>Contact Information</th>
		                				<th><span class="fa fa-user fa-fw"></span>Contact Person</th>
		                				<th><span class="fa fa-building-o fa-fw"></span>Address</th>
		                				<th><span class="fa fa-thumbs-up fa-fw"><span class="fa fa-thumbs-down fa-fw">Action</th>	
		                			</tr>
		                		</thead>
		                			<tbody>
		                			@foreach($supl as $suplier)
		                				<tr>
		                					<th>{{$suplier->Name}}</th>
		                					<th>{{$suplier->contact}}</th>
		                					<th>{{$suplier->person}}</th>
		                					<th>{{$suplier->saddress}}</th>
		                					<th><button class="btn btn-primary btn-xs">Add</button>
		                					<button class="btn btn-primary btn-xs">Edit</button>
		                					</th>
		                				</tr>
		                			@endforeach		                				
		                			</tbody>
		                				<tfoot>
		                					
		                				</tfoot>
		                			
		                		
		                	</table>
		                	</div>
		                	<div class="panel-footer" style="text-align: center"></div>
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