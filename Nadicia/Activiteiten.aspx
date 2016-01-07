<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Activiteiten.aspx.cs" Inherits="Nadicia.Models.Activiteiten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Main.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">

       <div id="reg1">
          <h3>Activiteiten</h3>
          <p>Er zijn verschillende activiteiten die wij uitvoeren, hieronder staan ze voor u uitgelegd.
             
          <ul class="activiteiten">
              <li><a href="Roofvogeldemonstratie.aspx">Roofvogeldemonstratie</a></li>
              <li><a href="Workshops.aspx">Workshops</a></li>
              <li><a href="Kinderfeest.aspx">Kinderfeest/Verjaardagfeest</a></li>
              <li><a href="Fotoshoot.aspx">Fotoshoot en filmopnames</a></li>
              <li><a href="Trouwringen.aspx">Trouwringen aanvliegen</a></li>
              <li><a href="Roofvogelwandeling.aspx">Roofvogelwandeling</a></li>
              <li><a href="Educatief.aspx">Educatieve lessen</a></li>
              <li><a href="Markt.aspx">Markten en braderieen</a></li>
          </ul>
          
             <p> Voor prijzen kunt u contact opnemen zodat we aan uw specifieke wensen kunnen voldoen.</p>
          </div>
        </div>   
</asp:Content>
