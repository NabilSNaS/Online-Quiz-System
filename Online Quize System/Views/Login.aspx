<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Quize_System.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Assets/Lib/Bootstrap/css/bootstrap.min.css" />
    <style>
        *{
            font-family:poppins;
        }
        body{
            background-image:url("../Assets/Images/booksss.jpg");
            background-size:cover;
        }
    </style>
</head>
<body>
    <div class="container-fluid">

        <div class="row" style="height:100px">

        </div>

        <div class="row">
            <div class="col-md-4"></div>
             <div class="col-md-4 bg-light rounded-3 mt-4 shadow-lg">
                 <h4 class="text-danger text-center mt-2">Online Quiz System</h4>
                 <form runat="server">
  <div class="mb-3">
    <label for="CEmailTb" class="form-label">Email address</label>
    <input type="email" class="form-control" id="CEmailTb" runat="server" aria-describedby="emailHelp" autocomplete="off"/>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="password" class="form-control" id="PasswordTb" runat="server"/>
  </div>
  <div class="mb-3 form-check">
  
    <label class="form-check-label text-danger"> <a href="Admin/AdminLogin.aspx" class="text-danger">Admin</a></label>     <label class="form-check-label text-danger"><a href="Registration.aspx" class="text-danger">Register</a></label>
  </div>
                     <div class="d-grid mb-3">
                         <label id="ErrMsg" runat="server"> </label>
                          <asp:Button ID="LoginBtn" runat="server" Text="Login" class="btn btn-danger btn-block" OnClick="LoginBtn_Click"/>
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
