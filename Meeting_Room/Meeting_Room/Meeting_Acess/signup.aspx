

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="meeting_room.Meeting_Room_Access.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<style>
* {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
body{
	overflow: hidden;
}
/* header */
.abbott-logo img {
	/* box-shadow: 4px 4px 4px rgb(0 0 0/ 25%); */
	width: 210px;
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
	
	margin-left: 16%;
    margin-top: 18px;
    color: #3294cf;
    width: 511px;
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
	background-color:  #3294cf;
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
	border: 2px solid  #3294cf;
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
	color:  #3294cf;
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
<form id="frmpost" runat="server" >
    <div class="container-fluild">
        <!-- header -->
        <div class="row loginHeader">
            <div class="col-3 abbott-logo">
                <img src="../images/640px-Abbott_Laboratories_logo.svg.png" />
            </div>
            <div class="col-9">
                <p>Meeting Room Access</p>
            </div>
        </div>
    </div>
    <br/>
    <div class="container ">

        <!-- login container -->
        <div class="row">
            <div class="col-12 col-xl-6 login-con">
                <img src="../images/signup.png" />
                
            </div>
            <div class="col-12 col-xl-6 ">
                <div class="login ">
                    <h1 class="signIn" style="text-align: center">Sign Up(Admin)</h1>
                    <div class="wrapper">
                        <div class="box">
                            <label class="form-label" runat="server">Name</label>
                            <input type="text" id="Text1" class="form-control" runat="server" name="Name" placeholder="Enter your Name" />
                        <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator1" ForeColor="Red"    OnServerValidate="customValidator_ServerValidate"   ErrorMessage="">  
</asp:CustomValidator> 

                        </div>
                    </div>
                    <div class="wrapper">
                        <div class="box">
                            <label class="form-label" runat="server">User Name</label>
                            <input type="text" id="Text2" class="form-control" name="username" runat="server" placeholder="Enter Username" />
                            <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator2" ForeColor="Red"   OnServerValidate="customValidator_ServerValidate1"  ErrorMessage="">  
</asp:CustomValidator> 
                        </div>
                        </div>
                        <div class="wrapper">
                            <div class="box">
                                <label class="form-label" runat="server">Password</label>
                                <input type="password" id="Password1" class="form-control" name="pwd" runat="server" placeholder="Enter Password" />
                                <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator3" ForeColor="Red"   OnServerValidate="customValidator_ServerValidate2"    ErrorMessage="">  
</asp:CustomValidator> 
                            </div>
                            </div>
                            <div class="wrapper">
                                <div class="box">
                                    <label class="form-label" runat="server">Confirm password</label>
                                    <input type="password" id="Password2" class="form-control" name="cpwd" runat="server" placeholder="Re Enter Password" />
                                    <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator4" ForeColor="Red"  OnServerValidate="customValidator_ServerValidate3"  ErrorMessage="">  
</asp:CustomValidator> 
                                </div>
                                <br/>
                            </div>
                            <div>
                                <%-- <button type="submit" class="btn btn-primary" id="save" runat="server" onserverclick="btnSubmit_Click">Login</button>--%>
                                <%-- <button type="submit" class="btn btn-primary" id="Button1" runat="server" onserverclick="btn_save">Submit</button>&nbsp&nbsp
                         <button type="submit" class="btn btn-primary" id="Button2" runat="server" onserverclick="Button2_ServerClick">Exit</button> --%>
                                <div align="center">
                                <asp:Button type="button" ID="MyButton" class="btn btn-outline-primary" runat="server" Text="Save" OnClick="btn_save "  Style="width:79px;" />
                                    
                                <asp:Button type="button" ID="Button1" runat="server" Class="btn btn-outline-danger" Text="Exit" OnClick="Button2_ServerClick" Style="width:79px;" />
                                </div>



                            </div>

                        </div>
                    </div>
                </div>
            </div>

        
            <br>
    </form>
    <%--	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>--%>
</body>


</html>