<!DOCTYPE html>
<html lang="{{config('app.locale')}}">
<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="{{URL::asset('css/app.css')}}">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="{{URL::asset('vendor/css/bootstrap.min.css')}}">
   		 <!-- Custom Fonts -->
    	<link href="{{URL::asset('vendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">

	<title>Login</title>
</head>
<body style="background:url('{{URL::asset('img/bg.jpg')}}')no-repeat center center fixed;
				-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  	background-size: cover;">

		<div class="wrapper" style="padding: 150px;">
			<div class="col-md-4 col-md-offset-4">

					<div class="panel panel-success" >
							<div class="panel-heading">
								<h1 style="font-size: 20px;"><span class="fa fa-lock fa-fw"></span>Log in</h1>
							</div>
							<div class="panel-body"><div style="font-size: 10px;">&nbsp</div>
							@if (Session::has('info'))
									<div class="alert alert-warning">
										{{Session::get('info')}}
									</div>
							@endif
								<form action="{{route('login')}}" method="POST">
									<div class="form-group {{$errors->has('username') ? 'has-error' : ''}}">
									<div class="input-group margin-bottom-sm">
										<span class="input-group-addon"><i class="fa fa-envelope-o fa-fw" aria-hidden="true"></i></span>
  										<input class="form-control" name="username" type="text" placeholder="User Name">
									</div>
									<!--<label>User Name</label><-->
									<!--<input type="text" name="username" class="form-control">-->
									@if($errors->has('username'))
										<span class="help-block">{{$errors->first('username')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('password') ? 'has-error' : ''}}">
									<div class="input-group">
  											<span class="input-group-addon"><i class="fa fa-key fa-fw" aria-hidden="true"></i></span>
  											<input class="form-control" name="password" type="password" placeholder="Password">
									</div>
									<!--	<label>Password</label>
										<input type="password" name="password" class="form-control">-->
									@if($errors->has('password'))
										<span class="help-block">{{$errors->first('password')}}</span>
									@endif
									</div><div style="font-size: 10px;">&nbsp</div>
									{{csrf_field()}}
									<button type="submit" class="btn btn-primary">Login</button>
									<a href="{{route('reg_user')}}" style="color: gray">&nbsp&nbsp Register</a>
								</form>
							</div>
							<div class="panel-footer" style="text-align: right;"><span style="font-size: 8px;">Inventory System ViralKnowledge™</span></div>
					</div>
			</div>
		</div>
</body>
</html>