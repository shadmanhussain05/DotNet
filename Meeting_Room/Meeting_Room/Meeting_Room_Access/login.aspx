<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="meeting_room.login" %>



<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ESS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"> -->
<style>
* {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
/* header */
.ess-logo img {
	/* box-shadow: 4px 4px 4px rgb(0 0 0/ 25%); */
	width: 137px;
    height: 104px;
    position: absolute;
    left: 130px;
    top: -7px;
}

.loginHeader {
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	/* background-color: rgba(241.18749797344208, 241.18749797344208, 241.18749797344208, 1); */
	background-color: rgb(247 247 247 / 58%);
	/* width: auto; */
	height: 98px;
	/* position:absolute; */
	/* left: 0px;
    top: 0px; */
}

.loginHeader p {

/* 	margin-left: 21%;
	margin-top: 18px;
	      color: #0dbadd;
	 font-style: italic; 
	font-weight: 700;
	font-size: 41px;
	text-align: center;
	letter-spacing: 1.1em; 
	text-shadow: 0px 4px 4px rgb(0 0 0/ 25%); */
	
	margin-left: 21%;
    margin-top: 18px;
    color: #3294cf;
    width: 378px;
    /* font-style: italic; */
    font-weight: 900;
    font-size: 34px;
   text-align: center;
    /* letter-spacing: 1.1em; */
    text-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
}

/* login container  */
.login-con img {
	width: 90%;
	margin-top: 50px;
}

.login {
	margin: 100px 1px 1px 0px;
	padding-left: 31px;
}

.Button, h1 {
	margin-left: 68px;
}

.social-login a {
	background-color: red;
	padding: 17px;
	margin-left: 10px;
	border-radius: 27px;
}

.social-login a i {
	color: white;
}

.wrapper {
	/* min-height: 100vh; */
	/* display: flex; */
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.box {
	position: relative;
}

.text {
	width: 300px;
	height: 40px;
	margin-top: 25px;
	padding: 0 15px;
	border: 2px solid gray;
	border-radius: 5px;
	outline: none;
	transform-origin: top left;
	font-size: 1rem;
}

.text:focus {
	border: 2px solid #e83c3c;
}

.place-holder {
	position: absolute;
	top: 30px;
	left: 15px;
	transition: 0.3s all;
}

.text:focus+.place-holder, .text:not(:placeholder-shown)+.place-holder {
	top: 17px;
	font-size: 0.8rem;
	background-color: #fff;
	color: #e83c3c;
	padding: 0 5px;
	transition: 0.3s all;
}
input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus, 
input:-webkit-autofill:active{
    -webkit-box-shadow: 0 0 0 30px white inset !important; 
        text-align: center;
}
.signIn{
	font-size: 36px;
}
</style>
</head>

<body>
<form  runat="server">
	<div class="container-fluild">
		<!-- header -->
		<div class="row loginHeader">
			<div class="col-3 ess-logo">
				<img src="../Image/abbott.jfif" alt="">
			</div>
			<div class="col-9">
				<p>Meeting Room Access</p>
			</div>
		</div>
	</div>
	<br>
	<div class="container ">

		<!-- login container -->
		<div class="row">
			<div class="col-12 col-xl-6 login-con">
				<img src="../Image/bgimg.jpg" alt="">
			</div>
			<div class="col-12 col-xl-6 ">
				<div class="login ">
					<h1 class="signIn">Sign In</h1>
					<div class="wrapper">
						<div class="box">
						<input type="text" class="text" name="userId" id="Username" placeholder=" " runat="server"> <span
								class="place-holder" > <b>User Name</b>
							</span>
							
						</div>
					</div>
					<div class="wrapper">
						<div class="box">
							<input type="password" class="text" name="password" id="password" placeholder=" " runat="server"> <span
								class="place-holder" ><b>Password</b> </span>
						</div>
						<br>
					</div>
					<div class="d-grid gap-2 col-4 Button">
						 <button type="submit" class="btn btn-primary" id="Button1" runat="server" onserverclick="login_ServerClick">Login</button>
                         <a href="signup.aspx"class="link-danger">Register</a>

					</div>
				
				</div>
			</div>
		</div>
	</div>
	<br>
</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>

</html>