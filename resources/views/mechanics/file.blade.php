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
                            <li class="in-active">
                            <i class="fa fa-share-alt fa-fw"></i> 
                             <a href="{{route('supplier')}}" >Supplier</a>
                            </li>
                            <li >
                            <i class="fa fa-cogs fa-fw"></i> 
                             <a href="{{route('material')}}">Materials</a>
                            </li>
                            <li class="active">
                            <i class="fa fa-group fa-fw"></i> 
                             Departments
                            </li>
                        </ol>
                    </div>
                </div>
                <div  class="wrapper">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 col-md-8 col-offset-4">
                                    
                                </div>

                                <div class="col-xs-12 col-md-4 ">
                                    <div class="input-group custom-search-form">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                        </span>
                                    </div>
                                </div>

                           </div>
                        </div>

                        <div class="panel-body">
                            <table width="100%" class="table  table-responsive table-bordered table-striped table-hover table-condensed" id="mechan">
                               
                                <thead>
                                    <tr>
                                        <th> sample</th>
                                        <th> sample</th>
                                        <th> sample</th>
                                        <th> sample</th>
                                        <th> sample</th>
                                        <th> sample</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                   <tr>
                                       <td>&nbsp</td>
                                       <td>&nbsp</td>
                                       <td>&nbsp</td>
                                       <td>&nbsp</td>
                                       <td>&nbsp</td>
                                       <td>&nbsp</td>
                                   </tr>
                                </tbody>
                                                        
                            </table>
                        </div>
                        
                        <div class="panel-footer" style="text-align: right;font-size: 10px">
                            <span>ViralKnowledge™</span>    
                        </div>

                    </div>
                </div>
@stop
@section('scripting')
@stop