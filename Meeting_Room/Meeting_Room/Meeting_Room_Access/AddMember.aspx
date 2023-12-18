<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="meeting_room.page.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
    <style>
        input {
            width: 60%;
        }

        button{

            width:240px;
        }

        .container {
            border: solid #EAEAEA 0px;
            padding: 3%;
            border-radius: 10px;
            background: White;
            box-shadow: 0px 0px 15px rgb(0 0 0 / 49%);
            width: 75%;
            margin-top: 30px;
        }
        .button{
            display: flex;
    justify-content: center;
        }
        .welcome{
            margin-left: 1017px;
            margin-top: 32px;
            font-size: 20px;
        }

        img{
            width:150px;
            height:100px;

        }
    </style>
<body>
            <div class="row mt-2 justify-content-end " style="box-shadow:0px 4px 4px rgb(0 0 0 / 25%);" >
            <div class="col-md-4">
                <img src="../Image/abbott.jfif" />
            </div>
        
            <div class="col-md-6 mt-4 ">
                <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label> 
                <button type="submit" class="btn btn-danger" id="Button1" runat="server" onserverclick="LinkButton1_Click" style="margin-right:226px;">LogOut</button>
            </div>
            </div>
        
    <div class="container">
        <form id="form1" runat="server">
        <div class="container-fluid">
            <h2 class="text-center" style="font-size:60px;">Add Employee</h2><br />
            <div class="row">
  <div class="col">
      <label for="Employee_Code" style="font-size:25px;">Employee UPI:</label> 
    <input type="text" class="form-control" placeholder="Employee Upi" aria-label="Employee_Code" id="Employee_Code" name="Employee_Code" runat="server"/>
    <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator1" ForeColor="Red"    OnServerValidate="customValidator_ServerValidate"   ErrorMessage="">  
</asp:CustomValidator>
  </div>
  <div class="col">
      <label for="First_Name" style="font-size:25px;">First Name:</label>
    <input type="text" class="form-control" placeholder="First Name" aria-label="First_Name" id="First_Name" name="First_Name" runat="server">
  </div>
</div>
             <div class="row">
  <div class="col">
      <label for="Last_Name" style="font-size:25px;">Last Name:</label>
    <input type="text" class="form-control" placeholder="Last Name" aria-label="Last_Name" id="Last_Name" name="Last_Name" runat="server">
  </div>
  <div class="col">
      <label for="Employee Lotus ID" style="font-size:25px;">Employee Email ID:</label>
    <input type="text" class="form-control" placeholder="Employee Email ID" aria-label="Employee Lotus ID" id="EMPLOYEE_LOTUS_ID" name="EMPLOYEE_LOTUS_ID" runat="server"/>
   <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator2" ForeColor="Red"    OnServerValidate="CustomValidator1_ServerValidate"   ErrorMessage="">  
</asp:CustomValidator>
  </div>
</div>
            <div class="row">
    <div class="col">
    <label for="gender" class="form-label" style="font-size:25px;">Gender</label>
    <select id="gender" class="form-select" runat="server">
      <option selected>Choose...</option>
      <option>Male</option>
        <option>Female</option>
    </select>
  </div>
    <div class="col">
    <label for="user type" class="form-label" style="font-size:25px;">User Type</label>
    <select id="Select1" class="form-select" runat="server">
      <option selected>Choose...</option>
      <option>EMP</option>
        <option>CON</option>

    </select>
  </div>
</div>           
        </div><br />
            <div class="button">
             <button type="submit" class="btn btn-primary" id="save" runat="server" onserverclick="save_ServerClick">save</button> &nbsp;
                <button type="reset" class="btn btn-secondary" id="reset" runat="server" onserverclick="reset_ServerClick">Reset</button>
            </div>
    </form>
    </div>
</body>
</html>