<!DOCTYPE html>
<html lang="{{config('app.locale')}}">
<head>
		<link rel="stylesheet" type="text/css" href="{{URL::asset('css/app.css')}}">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<title>Login</title>
</head>
<body>
		<div class="wrapper" style="padding: 150px;">
			<div class="col-md-4 col-md-offset-4">
					<div class="panel ">
							<div class="panel-heading">
								<h1 class="img img-circle" style="font-size: 20px;"><span class="glyphicon glyphicon-lock"></span> Log in</h1>
							</div>
							<div class="panel-body">
							@if (Session::has('info'))
									<div class="alert alert-warning">
										{{Session::get('info')}}
									</div>
							@endif
								<form action="{{route('login')}}" method="POST">
									<div class="form-group {{$errors->has('username') ? 'has-error' : ''}}">
									<label>User Name</label>
									<input type="text" name="username" class="form-control">
									@if($errors->has('username'))
										<span class="help-block">{{$errors->first('username')}}</span>
									@endif
									</div>
									<div class="form-group {{$errors->has('password') ? 'has-error' : ''}}">
										<label>Password</label>
										<input type="password" name="password" class="form-control">
									@if($errors->has('password'))
										<span class="help-block">{{$errors->first('password')}}</span>
									@endif
									</div>
									{{csrf_field()}}
									<button type="submit" class="btn btn-primary">Login</button>
									<a href="{{route('reg_user')}}" style="color: gray"> Register</a>
								</form>
							</div>
							<div class="panel-footer"></div>
					</div>
			</div>
		</div>
</body>
</html>