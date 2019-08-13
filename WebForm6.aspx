<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="census.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <br />
            <br />
            <h3>Correaltion between Education and Unemployment Rate</h3>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select Education Level</asp:ListItem>
                <asp:ListItem>Illiterate</asp:ListItem>
                <asp:ListItem>Literate without education level</asp:ListItem>
                <asp:ListItem>Primary</asp:ListItem>
                <asp:ListItem>Middle</asp:ListItem>
                <asp:ListItem>Metriculate/Secondary</asp:ListItem>
                <asp:ListItem>Higher Secondary</asp:ListItem>
                <asp:ListItem>Non Technical Diploma</asp:ListItem>
                <asp:ListItem>Technical Diploma</asp:ListItem>
                <asp:ListItem>Graduate and above</asp:ListItem>
            </asp:DropDownList>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" >
                <asp:ListItem>Select age group(Unemployment rate)</asp:ListItem>
                <asp:ListItem>15-29</asp:ListItem>
                <asp:ListItem>30-44</asp:ListItem>
                <asp:ListItem>45-59</asp:ListItem>
                <asp:ListItem>60 and above</asp:ListItem>
                <asp:ListItem>Total</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:DropDownList ID="DropDownList2" runat="server" >
                <asp:ListItem>Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Total</asp:ListItem>
            </asp:DropDownList>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />


            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />


        </div>
    </form>
</body>
</html>
