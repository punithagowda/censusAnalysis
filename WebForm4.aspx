<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="census.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <center> <div>
            <br />
            <br />
            Family Head
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server"></asp:GridView>
          <br />
            <br /><br />
            <br />
           Family Members
            <br />
            <br />
                    <asp:GridView ID="GridView2" runat="server"></asp:GridView>

        </div></center> 
    </form>
</body>
</html>
