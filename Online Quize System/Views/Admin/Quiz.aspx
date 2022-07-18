<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="Online_Quize_System.Views.Admin.Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" >
            <div class="col-md-4 mt-5 bg-light">
                <h5 class="text-danger text-center">Managae Quiz</h5>
               
  <div class="mb-3">
    <label for="QuizNameTb" class="form-label text-danger">Quiz Name</label>
    <input type="text" class="form-control" id="QuizNameTb" runat="server"  autocomplete="off"/>
  </div>

   <div class="mb-3">
    <label for="QuestionTb" class="form-label text-danger">Question Number</label>
    <input type="text" class="form-control" id="QuestionTb" runat="server"  autocomplete="off"/>
  </div>

    <div class="mb-3">
    <label for="AnsByQsnTb" class="form-label text-danger">Answer Number</label>
    <input type="text" class="form-control" id="AnsByQsnTb" runat="server"  autocomplete="off"/>
  </div>
                    <div class="row">
                         <label id="ErrMsg" runat="server" class="text-danger"> </label>
                        <div class="col d-grid mb-3">
   
   <asp:Button ID="EditItm" runat="server" Text="Edit" class="btn btn-warning btn-block" OnClick="EditItm_Click" />
   </div>
                        <div class="col d-grid mb-3">
                           
   <asp:Button ID="SaveItm" runat="server" Text="Save" class="btn btn-primary btn-block" OnClick="SaveItm_Click" />
   </div>
                        <div class="col d-grid mb-3">
 
   <asp:Button ID="DeleteItm" runat="server" Text="Delete" class="btn btn-danger btn-block" OnClick="DeleteItm_Click" />
   </div>
                        </div>  
                     
            </div>
            
            <div class="col-md-1 mt-5 bg-blank"></div>
                <div class="col-md-7 mt-5 bg-light">
            <h3 class="text-danger text-center">Quize List</h3>
            <asp:GridView id="QuizList" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="QuizList_SelectedIndexChanged">
                <HeaderStyle BackColor="#CC6600" BorderColor="Black" />
                    </asp:GridView>
            </div> 
                 
    </div>
         </div>
    
</asp:Content>
