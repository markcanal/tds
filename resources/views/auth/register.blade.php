<!DOCTYPE html>
<html lang="{{config('app.locale')}}">
<head>
		<link rel="stylesheet" type="text/css" href="{{URL::asset('css/app.css')}}">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<title>Register</title>
</head>
<body>
		<div class="wrapper" style="padding: 100px;">
			<div class="col-md-4 col-md-offset-4">
					<div class="panel ">
							<div class="panel-heading">
								<h1 style="font-size: 20px;"><span class="glyphicon glyphicon-registration-mark"></span>Registration Form</h1>
							</div>
							<div class="panel-body">
							@if (Session::has('info'))
									<div class="alert alert-success">
										{{Session::get('info')}}
									</div>
							@endif
								<form action="{{route('reg_user_save')}}" method="POST">
									<div class="form-group {{$errors->has('username') ? 'has-error' : ''}}" >
									<label>User Name</label>
									<input type="text" name="username" class="form-control">
									@if($errors->has('username'))
										<span class="help-block">{{$errors->first('username')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('email') ? 'has-error' : ''}}">
									<label>Email</label>
									<input type="email" name="email" class="form-control">
									@if($errors->has('email'))
										<span class="help-block">{{$errors->first('email')}}</span>
									@endif

									</div>
									<div class="form-group {{$errors->has('password') ? 'has-error' : ''}}">
										<label>Password</label>
										<input type="password" name="password" class="form-control">
									@if($errors->has('password'))
										<span class="help-block">{{$errors->first('password')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('repeat_password') ? 'has-error' : ''}}">
										<label>Repeat Password</label>
										<input type="password" name="repeat_password" class="form-control">
									@if($errors->has('repeat_password'))
										<span class="help-block">{{$errors->first('repeat_password')}}</span>
									@endif
									</div>
									{{csrf_field()}}
									<button type="submit" class="btn btn-primary"> Submit </button>
									<a href="{{route('index')}}" style="color: gray"> Proceed to Login</a>
								</form>
							</div>
							<div class="panel-footer"></div>
					</div>
			</div>
		</div>
</body>
</html>