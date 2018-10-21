@extends('apps.admin.layouts.master')
@section('title','Slider')
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
                              @if(isset($data))
                              <h4>Update Slider</h4>
                              @else
                              <h4>Create Slider</h4>
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
                                  @if(isset($data))
                                  action="{{url('Slider/update/'.$data->id)}}" 
                                  @else
                                  action="{{url('Slider/save')}}" 
                                  @endif
                                  method="post"  enctype="multipart/form-data">
                                    {!! csrf_field() !!}
                                    @if(!empty($data))<input type="hidden" name="eximage" value="{{$data->logo}}"> @endif
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-sm-12 col-form-label" for="exampleName">Title</label>
                                         <div class="col-lg-8 col-md-9 col-sm-12">
                                            <input type="text" class="form-control" id="exampleName" aria-describedby="emailHelp" name="title" placeholder="Enter Your Title Name" @if(isset($data)) value="{{$data->title}}" @endif>
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-sm-12 col-form-label" for="exampleName">Image</label>
                                         <div class="col-lg-6 col-md-9 col-sm-12">
                                           @if(isset($data))
                                           <img src="{{url('upload/Slider/'.$data->image)}}" width="50%"> <br> <br>
                                           @endif
                                          <input type="file" id="exampleInputFile" aria-describedby="fileHelp" name="image">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-sm-12 col-form-label" for="exampleName">Tag line</label>
                                         <div class="col-lg-8 col-md-9 col-sm-12">
                                            <input type="text" class="form-control" id="exampleName" aria-describedby="emailHelp" name="tagline" placeholder="Enter Your Tag line Detail" @if(isset($data)) value="{{$data->tagline}}" @endif>
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-sm-12 col-form-label" for="exampleName">Explain</label>
                                         <div class="col-lg-8 col-md-9 col-sm-12">
                                          <input type="text" class="form-control" id="exampleName" aria-describedby="emailHelp" name="explain" placeholder="Enter Your Explain Detail" @if(isset($data)) value="{{$data->explain}}" @endif>
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
      
  </div>    
</div> <!-- ./wrapper -->
<!-- START CORE PLUGINS -->
        
@endsection

