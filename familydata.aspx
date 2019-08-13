<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="familydata.aspx.cs" Inherits="census.familydata" %>
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
            width: 801px;
            height: 620px;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style3 {
            height: 846px;
            width: 1074px;
        }
        .auto-style4 {
            height: 60px;
        }
        .auto-style5 {
            width: 79%;
            height: 243px;
        }
    </style>
    <div class="auto-style3">


        <br />
        <br />
        <br />
        
        <center>
        <div style="background-color:#f3f3f1; " class="auto-style1">
        <table align="center" class="auto-style5">
            <center>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4" colspan="2">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Census 2019</h3></td>
            </tr>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" CssClass="text" placeholder="Family ID"  runat="server" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="text" placeholder="Full Name"  runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                   
                    &nbsp;</td>
                <td class="auto-style4">
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <center> <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="222px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList></center> 
                   
                </td>
                <td class="auto-style4">
                   <asp:TextBox ID="TextBox7" CssClass="text" placeholder="Date of Birth" runat="server" Width="250px"></asp:TextBox>

                </td>
            </tr>
                <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" CssClass="text" placeholder="Address" runat="server" Width="250px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox9" CssClass="text" placeholder="District" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
           
                 <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" CssClass="text" placeholder="State" runat="server" Width="250px"></asp:TextBox>

                </td>
                <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Head of the Family</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
                 <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:DropDownList ID="DropDownList2" runat="server">
                       <asp:ListItem>Select Marital Status</asp:ListItem>
                       <asp:ListItem>Single</asp:ListItem>
                       <asp:ListItem>Married</asp:ListItem>
                       <asp:ListItem>Divorced</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
<asp:DropDownList ID="DropDownList3" runat="server">
    <asp:ListItem>Select Education </asp:ListItem>
    <asp:ListItem>Illiterate</asp:ListItem>
    <asp:ListItem>Primary School</asp:ListItem>
    <asp:ListItem>Middle School</asp:ListItem>
    <asp:ListItem>Secondary</asp:ListItem>
    <asp:ListItem>Higher Secondary</asp:ListItem>
    <asp:ListItem>Diploma</asp:ListItem>
    <asp:ListItem>Graduate</asp:ListItem>
    <asp:ListItem>Post Graduate and above</asp:ListItem>
                    </asp:DropDownList>                </td>
            </tr>
                 <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server">
    <asp:ListItem>Select Occupation</asp:ListItem>
    <asp:ListItem>Self Employeed</asp:ListItem>
    <asp:ListItem>Central governament</asp:ListItem>
                        <asp:ListItem>State governament</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>IT/BT</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Agriculture</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                    </asp:DropDownList>                
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox11" CssClass="text" placeholder="Father/Spouse Name" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td  class="auto-style2">
                    &nbsp;</td>
                     <td>
                         <asp:DropDownList ID="DropDownList5" runat="server">
                             <asp:ListItem>Select Religion</asp:ListItem>
                             <asp:ListItem>Hindu</asp:ListItem>
                             <asp:ListItem>Christian</asp:ListItem>
                             <asp:ListItem>Muslim</asp:ListItem>
                             <asp:ListItem>Jain</asp:ListItem>
                             <asp:ListItem>Buddha</asp:ListItem>
                             <asp:ListItem>OBC</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                <td  class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <center> <asp:Button ID="Button2" runat="server" cssclass="btn--form" Text="Add Family " BorderStyle="None" OnClick="Button2_Click" />&nbsp;<asp:Button ID="Button3" runat="server" cssclass="btn--form" Text="Next" BorderStyle="None" OnClick="Button3_Click" /></center>
                </td>
            </tr>

            </center>
        </table>
            </div>
            </center>
        


    </div>
</asp:Content>
