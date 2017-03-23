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
                            <i class="fa fa-dashboard"></i> 
                             Dashboard
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                	<div class="col-lg-12">
		                <div class="panel panel-green">
		                	<div class="panel-heading">
		                	<span class="fa fa-check-square-o fa-fw"></span>List of Stocks
		                	</div>
		                	
		                		<div class="panel-body">
		                			<div class="table-responsive">
					                	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
					                		<thead>
					                			<tr>
					                				<th>Part Number</th>
					                				<th>Part Name</th>
					                				<th>Type</th>
					                				<th>On Stocks</th>
					                				<th>Supplier</th>
					                				
					                			</tr>
					                		</thead>
					                			<tbody>
					                			@foreach($sup as $sups)
					                				<tr>
					                				<th>{{$sups->p_id}}</th>
					                				<th>{{$sups->p_name}} </th>
					                				<th>{{$sups->p_description}}</th>
					                				<th>200</th>
					                				<th>{{$sups->sname}}</th>
					                				</tr>
					                			@endforeach

					                				
					                			</tbody>
					                	</table>
				                	
			                		<div class="panel-footer" style="text-align: center"></div>
			                	</div>
		                	</div>
		                </div>
		            </div>

		            <div class="col-lg-12">
		                <div class="panel panel-red">
		                	<div class="panel-heading">
		                	<span class="fa fa-minus-square fa-fw"></span>List of Out of Stocks
		                	</div>
		                	<div class="table-responsive">
		                		<div class="panel-body">
				                	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example1">
				                		<thead>
				                			<tr>
				                				<th>Part Number</th>
				                				<th>Part Name</th>
				                				<th>Type</th>
				                				<th>On Stocks</th>
				                				<th>Supplier</th>
				                				
				                			</tr>
				                		</thead>
				                			<tbody>
				                			@foreach($sup as $sups)
				                				<tr>
				                				<th>{{$sups->p_id}}</th>
				                				<th>{{$sups->p_name}} </th>
				                				<th>{{$sups->p_description}}</th>
				                				<th>200</th>
				                				<th>{{$sups->sname}}</th>
				                				</tr>
				                			@endforeach

				                				
				                			</tbody>
				                	</table>
			                	</div>
		                	</div>
		                </div>
		            </div>
                </div>
		
@stop
@section('scripting')

@stop