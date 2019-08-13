<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ack.aspx.cs" Inherits="census.ack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
           <center> <h1> Census 2019</h1>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
               <br />
               <asp:Image ID="Image3" runat="server"></asp:Image><br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView><br />
               <asp:GridView ID="GridView2" runat="server"></asp:GridView><br />

                           <asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
               &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home" />
               </center>
        </div>
    </form>
</body>
</html>
