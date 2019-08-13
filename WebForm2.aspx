<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="census.WebForm2" %>
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
            width: 466px;
            height: 673px;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style3 {
            height: 846px;
            width: 1074px;
        }
    </style>
    <div class="auto-style3">


        <br />
        <br />
        <br />
        
        <center>
        <div style="background-color:#f3f3f1; " class="auto-style1">
        <table align="center" class="nav-justified" style="width: 79%; height: 243px">
            <center>
            <tr>
                <td>
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration for Volunteers</h3></td>
            </tr>
            <tr>
                <td>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="text" placeholder="Full Name"  runat="server" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
                <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <center>  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="222px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList></center>
                    <br />
                </td>
            </tr>
           
                 <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox7" CssClass="text" placeholder="Date of Birth" runat="server" Width="250px"></asp:TextBox>

                </td>
            </tr>
                 <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" CssClass="text" placeholder="Home City" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>

            
                 <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" CssClass="text" placeholder="Work City" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr> <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" CssClass="text" placeholder="Email" runat="server" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regexEmailValid" ErrorMessage="Invalid email" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox5" ValidationGroup="Button2"></asp:RegularExpressionValidator>

                </td>
            </tr> <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" CssClass="text" placeholder="Phone" runat="server" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
                        ControlToValidate="TextBox6" ErrorMessage="Invalid Phone number"  
                        ValidationExpression="[0-9]{10}" ValidationGroup="Button2"></asp:RegularExpressionValidator>  
                </td>
            </tr>
             
                 <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" CssClass="text" placeholder="Password" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    
                </td>
            </tr>
                   <tr>
                <td style="height: 76px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" cssclass="btn--form" Text="Register" BorderStyle="None" OnClick="Button2_Click" />
                </td>
            </tr>
            </center>
        </table>
            </div>
            </center>
        


    </div>
</asp:Content>
