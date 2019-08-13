<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="census.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron" style="background-image:url(Screenshot.png)">
        
       <p class="lead"></p>
      
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add Family</h2>
         
            <p>
                <a class="btn btn-default" href="familydata.aspx">Add Family &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>View Families</h2>
           
            <p>
                <a class="btn btn-default" href="WebForm4.aspx">View Families &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Change Password</h2>
           
            <p>
                <a class="btn btn-default" href="changepassword.aspx" onclick="send" >Change Password &raquo;</a>
            </p>
        </div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
</asp:Content>
