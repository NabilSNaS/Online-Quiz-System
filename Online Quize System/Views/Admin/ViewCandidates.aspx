<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewCandidates.aspx.cs" Inherits="Online_Quize_System.Views.Admin.ViewCandidates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   
    <div class="container-fluid">
        <div class="row" style="height:10px">

        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10 bg-light">
                 <h3 class="text-center text-danger"> Registered Candidates</h3>
                <asp:GridView ID="CandidatesList" runat="server" class="table table-borderd table-dark table-hover"></asp:GridView>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</asp:Content>
