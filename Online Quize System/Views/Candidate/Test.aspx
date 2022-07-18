<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Candidate/CandidateMaster.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Online_Quize_System.Views.Candidate.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:url("../../Assets/Images/for admin.jpg");
            background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
     <div class="container-fluid">
        <div class="row" style="height:100px">

        </div>
        <div class="row">
            <div class="col md-3"></div>
            <div class="col md-10 bg-white rounded-3">
                <div class="row bg-success">
                    <h4 class="text-light" runat="server" id="QuestTb">Your Question Here</h4>

                </div>
                <div class="m-1 m-3 form-check">
    <label for="Ans1Rb" class="form-check-label text-success" id="Ans1Lbl" runat="server">Answer 1</label>
    <input type="radio" name="Ans" class="form-check-input" id="Ans1Rb" runat="server"/>
    </div>
                <div class="m-1 m-3 form-check">
    <label for="Ans2Rb" class="form-check-label text-success" id="Ans2Lbl" runat="server">Answer 2</label>
    <input type="radio" name="Ans" class="form-check-input" id="Ans2Rb" runat="server"/>
    </div>
                <div class="m-1 m-3 form-check">
    <label for="Ans3Rb" class="form-check-label text-success" id="Ans3Lbl" runat="server">Answer 3</label>
    <input type="radio" name="Ans" class="form-check-input" id="Ans3Rb" runat="server"/>
    </div>
                <div class="m-1 m-3 form-check">
    <label for="Ans4Rb" class="form-check-label text-success" id="Ans4Lbl" runat="server" >Answer 4</label>
    <input type="radio" name="Ans" class="form-check-input" id="Ans4Rb" runat="server"/>
    </div>
                <div class="row ">
                    <div class="col-md-10 mt-2">
                         <label id="InfoMsg" runat="server" class="text-danger h5"></label>
                    </div>
                    <div class="col-md-2">
                       <label id="ErrMsg" runat="server" class="text-success"></label>
                    </div>
                                            
                    <div class="col-md-2 mb-3 ">
                        <asp:Button class="btn btn-success" ID="SubmitBtn" Text="Submit" runat="server" Width="70px"  style=" float:left;margin-left:400px;" OnClick="Unnamed1_Click"/>
                    </div>

                </div>

            </div>
            <div class="col md-2">

            </div>
        </div>
    </div>
</asp:Content>
