<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Candidate/CandidateMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Quize_System.Views.Candidate.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:url("../../Assets/Images/for admin.jpg");
            background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="row" style="height:100px">

        </div>
    <div class="row">
        <div class="col bg-light border-top-2 border-bottom-2">
            <div class="row pt-3 pb-3">
                <div class="col-2"></div>
                <div class="col-2 "><label class="form-label text-center text-success h4" >Select Your Quiz</label></div>
                <div class="col-4">
                     <asp:DropDownList id="QuizTb" runat="server" class="form-control">

                    </asp:DropDownList>
                </div>
                <div class="col-4">
                      <asp:Button Text="Submit" class=" btn btn-success" runat="server" OnClick="Unnamed1_Click" />
                </div>
            </div>
            <div>
                 
     
              
            </div>

        </div>
    </div>

        
</asp:Content>
