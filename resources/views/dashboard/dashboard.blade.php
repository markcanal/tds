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
                                <a href="" >Home</a>
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
		                	List of Stocks
		                	</div>
		                	<div class="panel-body">
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
		                				<tr>
		                				<th>01235Ph</th>
		                				<th>pako </th>
		                				<th>Mahaba</th>
		                				<th>200</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>martilyo </th>
		                				<th>maiksi</th>
		                				<th>100</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Turnilyo </th>
		                				<th>Katamtaman</th>
		                				<th>200</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Pako </th>
		                				<th>Baluktot</th>
		                				<th>200</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>

		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>
		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>
		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>
		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>
		                				<tr>
		                				<th>01235Ph</th>
		                				<th>Ulo </th>
		                				<th>Sira</th>
		                				<th>32</th>
		                				<th>Dante</th>
		                				</tr>
		                			</tbody>
		                				<tfoot>
		                					
		                				</tfoot>
		                			
		                		
		                	</table>
		                	</div>
		                	<div class="panel-footer" style="text-align: center"></div>
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