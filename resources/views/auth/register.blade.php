<!DOCTYPE html>
<html lang="{{config('app.locale')}}">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="{{URL::asset('css/app.css')}}">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="{{URL::asset('vendor/css/bootstrap.min.css')}}">
		 <!-- Custom Fonts -->
	<link href="{{URL::asset('vendor/font-awesome-new/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{URL::asset('dist/css/sb-admin-2.css')}}" rel="stylesheet">

	<title>Register</title>
</head>
<body style="background:url('{{URL::asset('img/bg.jpg')}}')no-repeat center center fixed;
				-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  	background-size: cover;">

		<div class="reg-panel">
			<div class="col-md-4 col-md-offset-4">

					<div class="panel panel-green">
							<div class="panel-heading">
								<h1 style="font-size: 20px;"><span class="fa fa-address-book fa-fw"></span>Registration Form</h1>
							</div>
							<div class="panel-body">
							@if (Session::has('info'))
									<div class="alert alert-success">
										{{Session::get('info')}}
									</div>
							@endif
								<form action="{{route('reg_user_save')}}" method="POST">
									<div class="form-group {{$errors->has('username') ? 'has-error' : ''}}" >
									<div class="input-group">
									<label class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></label>
									<input type="text" name="username" class="form-control" placeholder="User Name">
									</div>
									@if($errors->has('username'))
										<span class="help-block">{{$errors->first('username')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('email') ? 'has-error' : ''}}">
									<div class="input-group">
									<label class="input-group-addon"><i class="fa fa-envelope fa-fw"></i></label>
									<input type="email" name="email" class="form-control" placeholder="email@email.com">
									</div>
									@if($errors->has('email'))
										<span class="help-block">{{$errors->first('email')}}</span>
									@endif

									</div>
									<div class="form-group {{$errors->has('password') ? 'has-error' : ''}}">
										<div class="input-group">
										<label class="input-group-addon"><i class="fa fa-key fa-fw"></i></label>
										<input type="password" name="password" class="form-control" placeholder="Password">
										</div>
									@if($errors->has('password'))
										<span class="help-block">{{$errors->first('password')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('repeat_password') ? 'has-error' : ''}}">
										<div class="input-group">
										<label class="input-group-addon"><i class="fa fa-keyboard-o fa-fw"></i></label>
										<input type="password" name="repeat_password" class="form-control" placeholder="Repeat Password">
										</div>
									@if($errors->has('repeat_password'))
										<span class="help-block">{{$errors->first('repeat_password')}}</span>
									@endif
									</div>
									{{csrf_field()}}
									<button type="submit" class="btn btn-primary"> Submit </button>
									<a href="{{route('index')}}" style="color: gray"> Proceed to Login</a>
								</form>
							</div>
							<div class="panel-footer" style="text-align: right;"><span style="font-size: 8px;">Inventory System ViralKnowledge™</span></div>
					</div>
			</div>
		</div>
</body>
</html>