<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="census.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        
        .auto-style1 {
            width: 481px;
            height: 398px;
        }
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
        .auto-style2 {
            height: 60px;
        }
        .auto-style3 {
            width: 79%;
            height: 381px;
        }
    </style>
    <br />
    <br />
    <br />
    <center><div style="background-color:#f3f3f1; " class="auto-style1">
        <table align="center" class="auto-style3">
            <center>
            <tr>
                <td>
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Password</h3>
                </td>
            </tr>
                <tr>
                <td class="auto-style2">
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" CssClass="text" placeholder="Enter your Id"  runat="server" Width="250px"></asp:TextBox>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="text" placeholder="Old Password"  runat="server" Width="250px"></asp:TextBox>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td style="height: 70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" CssClass="text" placeholder="New Password" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
 <tr>
                <td style="height: 70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" CssClass="text" placeholder="ReEnter New Password" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>            <tr>
                <td style="height: 70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" cssclass="btn--form" Text="Change" BorderStyle="None" OnClick="Button2_Click" style="height: 22px" />
                </td>
            </tr>
            </center>
        </table>
    </div></center>

</asp:Content>
