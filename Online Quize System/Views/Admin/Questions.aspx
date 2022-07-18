<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="Online_Quize_System.Views.Admin.Questions" EnableViewState="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

    <div class="container-fluid">
        <div class="row" >
            <div class="col-md-3 bg-light">
                <h5 class="text-danger text-center">Managae Questions</h5>
               
  <div class="mb-3">
    <label for="QuizTb" class="form-label text-danger">Quiz</label>
      <asp:DropDownList id="QuizTb" runat="server" class="form-control">

      </asp:DropDownList>
  </div>

   <div class="mb-1">
    <label for="QuestionTb" class="form-label text-danger">Question</label>
    <input type="text" class="form-control" id="QuestionTb" runat="server"  autocomplete="off"/>
  </div>

    <div class="mb-1">
    <label for="Ans1Tb" class="form-label text-danger">Option 1</label>
    <input type="text" class="form-control" id="Ans1Tb" runat="server"  autocomplete="off"/>
  </div>   
                
    <div class="mb-1">
    <label for="Ans2Tb" class="form-label text-danger">Option 2</label>
    <input type="text" class="form-control" id="Ans2Tb" runat="server"  autocomplete="off"/>
  </div>   
                
     <div class="mb-1">
    <label for="Ans3Tb" class="form-label text-danger">Option 3</label>
    <input type="text" class="form-control" id="Ans3Tb" runat="server"  autocomplete="off"/>
  </div>

      <div class="mb-1">
    <label for="Ans4Tb" class="form-label text-danger">Option 4</label>
    <input type="text" class="form-control" id="Ans4Tb" runat="server"  autocomplete="off"/>
  </div>

     <div class="mb-1">
    <label for="CorectTb" class="form-label text-danger">Correct Option</label>
    <input type="text" class="form-control" id="CorectTb" runat="server"  autocomplete="off"/>
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
            
            <div class="col-md-1  bg-blank"></div>
                <div class="col-md-8 bg-body">
            <h3 class="text-danger text-center">Questions List</h3>
            <asp:GridView id="QuestionList" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="QuestionList_SelectedIndexChanged" AutoPostBack ="true" >
                <HeaderStyle BackColor="#CC6600" BorderColor="Black" />
                <FooterStyle BackColor ="white" BorderColor="black" />
                    </asp:GridView>
            </div> 
                 
    </div>
         </div>
    
</asp:Content>
