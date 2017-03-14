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
                            <i class="fa fa-cog fa-fw"></i> 
                             Maintenance
                            </li>
                            <li >
                            <i class="fa fa-share-alt fa-fw"></i> 
                             <a href="{{route('supplier')}}" >Supplier</a>
                            </li>
                            <li class="active">
                            <i class="fa fa-cogs -fa-fw"></i> 
                             Materials
                            </li>
                        </ol>
                    </div>
                </div>
@stop
@section('scripting')
@stop