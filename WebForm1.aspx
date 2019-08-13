<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="census.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Probability in Education</h3>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select Level</asp:ListItem>
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
            
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:DropDownList ID="DropDownList2" runat="server" >
                <asp:ListItem>Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <br />
            <h3>Probability in Unemployement</h3>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>Select age group</asp:ListItem>
                <asp:ListItem>15-29</asp:ListItem>
                <asp:ListItem>30-44</asp:ListItem>
                <asp:ListItem>45-59</asp:ListItem>
                <asp:ListItem>60 and above</asp:ListItem>
                <asp:ListItem>Total</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>Select Region</asp:ListItem>
                <asp:ListItem>Rural</asp:ListItem>
                <asp:ListItem>Urban</asp:ListItem>
                <asp:ListItem>All</asp:ListItem>

            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
     <br />
        <asp:Chart ID="Chart1" runat="server" >
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
                    </div>

    </form>
</body>
</html>
