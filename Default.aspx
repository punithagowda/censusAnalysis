<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="census._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url(Screenshot.png)">
        
       <p class="lead"></p>
      
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add Volunteers</h2>
         
            <p>
                <a class="btn btn-default" href="WebForm2.aspx">Add Volunteers &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Visualization</h2>
           
            <p>
                <a class="btn btn-default" href="analysis.aspx">Visualization &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Simulation</h2>
           
            <p>
                <a class="btn btn-default" href="WebForm5.aspx">Simulation &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Correlation(Simulation)</h2>
           
            <p>
                <a class="btn btn-default" href="WebForm6.aspx">Correlation(Simulation) &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Probability</h2>
           
            <p>
                <a class="btn btn-default" href="WebForm1.aspx">Probability &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
