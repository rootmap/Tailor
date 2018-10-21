@extends('apps.admin.layouts.master')
@section('title','Addons Closing Info')
@section('content')
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
      <!-- Main content -->
      <div class="content">
          <div class="row">
              <div class="col-sm-12 col-md-12">
                  <div class="panel panel-bd lobidrag">
                      <div class="panel-heading">
                          <div class="panel-title">
                              @if(isset($edit))
                              <h4>Update Addons Closing info</h4>
                              @else
                              <h4>Create Addons Closing info</h4>
                              @endif
                          </div>
                      </div>
                      <div class="panel-body">
                          <div class="row">
                              <div class="col-md-6 col-md-offset-3">
                                  @include('apps.admin.include.msg')
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                                  <form 
                                  @if(isset($edit))
                                  action="{{url('AddonsClosing/update/'.$edit->id)}}" 
                                  @else
                                  action="{{url('AddonsClosing/save')}}" 
                                  @endif
                                  method="post"  enctype="multipart/form-data">
                                  @if(!empty($edit))<input type="hidden" name="eximage" value="{{$edit->image}}"> @endif
                                    {!! csrf_field() !!}
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-sm-12 col-form-label">Select Category</label>
                                        <div class="col-lg-6 col-md-9 col-sm-12">
                                            <select  class="search_test" name="cat_id">
                                                @if(isset($cat))
                                                @foreach($cat as $row)
                                                <option 
                                                @if(isset($edit))
                                                  @if($edit->categories_id== $row->id)
                                                  selected
                                                  @endif 
                                                @endif
                                                value="{{$row->id}}">{{$row->name}}</option>
                                                @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-sm-12 col-form-label" for="exampleName">Name</label>
                                         <div class="col-lg-6 col-md-9 col-sm-12">
                                          <input type="text" class="form-control" id="exampleName" aria-describedby="emailHelp" name="name" placeholder="Enter Your Name" @if(isset($edit)) value="{{$edit->name}}" @endif>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-sm-12 col-form-label" for="exampleName">Image</label>
                                         <div class="col-lg-6 col-md-9 col-sm-12">
                                           @if(isset($edit))
                                           <img src="{{url('upload/AddonsClosing/'.$edit->image)}}" width="50%"> <br> <br>
                                           @endif
                                          <input type="file" id="exampleInputFile" aria-describedby="fileHelp" name="image">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-sm-12 col-form-label" for="exampleName">Price</label>
                                         <div class="col-lg-6 col-md-9 col-sm-12">
                                          <input type="text" class="form-control" id="exampleName" aria-describedby="emailHelp" name="price" placeholder="Enter Your Price" @if(isset($edit)) value="{{$edit->price}}" @endif>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                      <div class="col-lg-6 col-md-9 col-sm-12">
                                        <button type="submit" class="btn btn-base pull-right">Submit</button>
                                      </div>
                                    </div>


                                </form>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      {{-- data list --}}
      <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-bd lobidrag">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>Addons Closing List </h4>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table id="dataTableExample2" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Category Name</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th style="width: 100px;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(isset($data))
                                @foreach($data as $row)
                                <tr>
                                    <td>{{$row->id}}</td>
                                    <td>{{$row->cat_name}}</td>
                                    <td>{{$row->name}}</td>
                                    <td>{{$row->price}}</td>
                                    <td>
                                        <a href="{{url('AddonsClosing/edit/'.$row->id)}}" class="btn btn-base btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        <a href="{{url('AddonsClosing/delete/'.$row->id)}}" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                    </td>

                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        {{-- data list end --}}
  </div>    
</div> <!-- ./wrapper -->
<!-- START CORE PLUGINS -->
        
@endsection

@section('css')
<link href="{{url('theme/adminpix/assets/plugins/datatables/dataTables.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{url('theme/adminpix/assets/plugins/jquery.sumoselect/sumoselect.min.css')}}" rel="stylesheet" type="text/css"/>
<link href="{{url('theme/adminpix/assets/plugins/select2/select2.min.css')}}" rel="stylesheet" type="text/css"/>
@endsection
@section('js')
<!-- DataTable Js -->
<script src="{{url('theme/adminpix/assets/plugins/datatables/dataTables.min.js')}}"></script>
<script src="{{url('theme/adminpix/assets/plugins/datatables/dataTables-active.js')}}"></script>
<!-- Sumoselect Js -->
<script src="{{url('theme/adminpix/assets/plugins/jquery.sumoselect/jquery.sumoselect.min.js')}}"></script>
<script src="{{url('theme/adminpix/assets/plugins/jquery.sumoselect/sumoselect-active.js')}}"></script>
<!-- Select2 Js -->
<script src="{{url('theme/adminpix/assets/plugins/select2/select2.min.js')}}"></script>
<script src="{{url('theme/adminpix/assets/plugins/select2/select2-active.js')}}"></script>

@endsection