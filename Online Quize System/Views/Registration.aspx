<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Quize_System.Views.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="../Assets/Lib/Bootstrap/css/bootstrap.min.css" />
    <style>
        *{
            font-family:poppins;
        }
        body{
            background-image:url("../Assets/Images/register.jpg");
            background-size:cover;
        }
    </style>
</head>
<body>
    <div class="container-fluid">

        <div class="row" style="height:60px">

        </div>

        <div class="row">
            <div class="col-md-4"></div>
             <div class="col-md-3 bg-light rounded-3 mt-6 shadow-lg">
                 <h4 class="text-danger text-center">Online Quiz System</h4>
                  <h6 class="text-success text-center">Register</h6>
                 <form runat="server">
                     <div class="mb-3">
    <label for="CNameTb" class="form-label">Candidate Name</label>
    <input type="text" class="form-control" id="CNameTb" runat="server" aria-describedby="emailHelp" autocomplete="off"/>
  </div>
                     <div class="mb-3">
    <label for="CEmailTb" class="form-label">Email Address</label>
    <input type="email" class="form-control" id="CEmailTb" runat="server" aria-describedby="emailHelp" autocomplete="off"/>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
                     
  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server"/>
  </div>
                     <div class="mb-3">
    <label for="CollegeTb" class="form-label">College</label>
    <input type="text" class="form-control" id="CollegeTb" runat="server" autocomplete="off"/>
  </div>

  <div class="mb-3 form-check">
  
      <label class="form-check-label text-danger  text-center"><a href="Login.aspx" class="text-danger">Login</a></label>
  </div>
                     <div class="d-grid mb-3">
                         <label runat="server" id="ErrMsg" class="text-danger"></label>
                         <asp:Button ID="RegisterBtn" runat="server" Text="Register" class="btn btn-success btn-block" OnClick="RegisterBtn_Click"/>
                     </div>
                     
</form>
             </div>
             <div class="col-md-4"></div>
        </div>

    </div>
    <!-- <form id="form1">
    <div>
    
    </div>
    </form>-->
  
    
</body>
</html>

