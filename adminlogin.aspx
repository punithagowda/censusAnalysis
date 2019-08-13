<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="census.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .text{
            background-color:transparent;
            border:0;
            border-bottom: solid 1px;
            outline:none;
        }
        .btn--form {
    padding: .5rem 2.5rem;
    font-size: .95rem;
    font-weight: 600;
    text-transform: uppercase;
    color: #fff;
    background: #111;
    border-radius: 35px;
   
    &:focus, &:hover

{
    background: lighten(#111, 13%);
}

}
        .auto-style1 {
            width: 481px;
            height: 271px;
        }
    </style>
    <div style="height: 419px; width: 1074px">
        <br />
        <br />
        <br />
        
        <center>
        <div style="background-color:#f3f3f1; " class="auto-style1">
        <table align="center" class="nav-justified" style="width: 79%; height: 243px">
            <center>
            <tr>
                <td>
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login for Admin</h3></td>
            </tr>
            <tr>
                <td>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="text" placeholder="Username"  runat="server" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="height: 70px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" CssClass="text" placeholder="Password" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 76px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" cssclass="btn--form" Text="Login" BorderStyle="None" OnClick="Button2_Click" />
                </td>
            </tr>
            </center>
        </table>
            </div>
            </center>
        <br />
        <br />


    </div>
</asp:Content>
