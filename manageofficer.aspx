<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageofficer.aspx.cs" Inherits="census.manageofficer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div>
     <br />
     <br />
    
          <div style="background-color:#f3f3f1; ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id"  style="margin-top: 0px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating" >
<Columns>
    <asp:TemplateField HeaderText="ID" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("id") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtq" runat="server" Text='<%# Eval("id") %>' Disabled ="true" Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt2" runat="server" Text='<%# Eval("name") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Gender" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry0" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt3" runat="server" Text='<%# Eval("gender") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="DOB" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry1" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt4" runat="server" Text='<%# Eval("dob") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
       
       <asp:TemplateField HeaderText="Home City" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry3" runat="server" Text='<%# Eval("homecity") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt6" runat="server" Text='<%# Eval("homecity") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
       <asp:TemplateField HeaderText="Work City" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry4" runat="server" Text='<%# Eval("workcity") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt7" runat="server" Text='<%# Eval("workcity") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
       <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry5" runat="server" Text='<%# Eval("email") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt8" runat="server" Text='<%# Eval("email") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
       <asp:TemplateField HeaderText="Phone" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry6" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txt9" runat="server" Text='<%# Eval("phone") %>' Height="25px" Width="100px"></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
</Columns>
</asp:GridView>
              </div>

 </div>

</asp:Content>
