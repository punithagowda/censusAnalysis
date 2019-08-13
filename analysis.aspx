<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="analysis.aspx.cs" Inherits="census.analysis" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .auto-style1 {
            width: 620px;
            height: 565px;
            margin-left: 280px;
        }
        .auto-style2 {
            height: 662px;
        }
    </style>
    <div>
        <br />
        <div class="auto-style1" style="background-color:#f3f3f1; " >
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"  >
                <asp:ListItem>Select </asp:ListItem>
                <asp:ListItem>Population</asp:ListItem>
                <asp:ListItem>Unemployement</asp:ListItem>
                <asp:ListItem>Education</asp:ListItem>
                <asp:ListItem>Women Employement</asp:ListItem>
            </asp:DropDownList>

          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Select area</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="False">
                <asp:ListItem>Select age group</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Chart" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Table" />
            &nbsp;
              <br />
            <br />
           <center> <asp:Label ID="Label1" runat="server"></asp:Label></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
           <center class="auto-style2"> <asp:Chart ID="Chart1" runat="server" Height="300px" Width="300px"  OnLoad="Chart1_Load" >
    <Titles>
        <asp:Title ShadowOffset="3" Name="Population" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="X-axis: Years"
            LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Male" />
          <asp:Series Name="Female" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
</asp:Chart>
               <br />
               <br />
               <asp:Label ID="Label2" runat="server" Text="X axis: Year  Y axis: Percentage"></asp:Label>
               <br />
               <br />
               <asp:GridView ID="GridView1" runat="server"  OnLoad="GridView1_Load">
               </asp:GridView>
               </center>
        </div>
    </div>

</asp:Content>
