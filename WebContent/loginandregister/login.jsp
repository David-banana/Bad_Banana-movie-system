<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Form by Tooplate</title>
	
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="/BadBanana/loginandregister/css/bootstrap.min.css">
    <link rel="stylesheet" href="/BadBanana/loginandregister/css/materialize.min.css">
    <link rel="stylesheet" href="/BadBanana/loginandregister/css/tooplate.css">
 <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/materialize.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/messages_zh.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#loginForm").validate({
			rules:{
				username:{
					required:true
				},
				password:{
					required:true
				}
			},
			messages:{
				username:{
					required:"用户名不能为空"
				},
				password:{
					required:"密码不能为空"
				}
			}
		});
	})
	</script>
</head>

<body id="login">
    <div class="container">
        <div class="row tm-register-row tm-mb-35">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-l">
                <form action="${pageContext.servletContext.contextPath }/LoginServlet" method="post" name = "loginForm" id="loginForm" class="tm-bg-black p-5 h-100">
                    <div class="input-field">
                        <div><input placeholder="Username" id="username" name="username" type="text" class="validate" value="${param.username }"></div>
                    </div>
                    <div class="input-field">
                        <div><input placeholder="Password" id="password" name="password" type="password" class="validate"></div>
                    </div>                   
                      <div  name="right" id="right"><span id="message">${message }</span></div>
                    
                    <div class="tm-flex-lr">
                        <a href="#" class="white-text small">忘记密码？</a>
                        <button type="submit" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">登陆</button>
                    </div>
                </form>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-r">
                <header class="font-weight-light tm-bg-black p-5 h-100">
                    <h3 class="mt-0 text-white font-weight-light">登录</h3>
                    <p>请输入您的用户名与密码进行登录</p>
                    <p class="mb-0">新用户请点击下方注册按钮进行注册</p>
                </header>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ml-auto mr-0 text-center">
                <a href="register.html" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">创建一个新用户</a>
            </div>
        </div>
       
    </div>

</body>

</html>