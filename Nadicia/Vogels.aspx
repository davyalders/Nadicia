<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Vogels.aspx.cs" Inherits="Nadicia.Models.Vogels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Main.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="reg1">
        <h3>Maak kennis met onze vogels</h3>
        
        <div id="bowie">
            <h4>Bowie de sneewuil</h4>
            <img id="bowieimg" src="bowie.png" />
            <ul>
                <li>Soort: Sneeuwuil</li>
                <li>Latijnse naam: Bubo Scandiacus</li>
                <li>Geslacht: Tarsel/Mannelijk</li>
                <li>Leefgebied: Alaska,Canada,Groenland,Scandinavie,Rusland en Siberie</li>
                <li>Spanwijdte: 1.25 tot 1.50</li>
                <li>Gewicht: 1.6 tot 3 kg</li>
                <li>Lengte: 52 tot 71 cm</li>
                <li>Prooi: Voornamelijk muizen en lemmingen.</li>
                <li>Broedseizoen: Mei, juni</li>
            </ul>
            <p>Bowie is een echte ster! Hij vliegt ontzettend graag en hij vind het heerlijk lekker rond te kijken. Ook is bowie niet snel bang maar is hij dat wel? Dan zoekt hij bescherming bij mij. Ik heb bowie zelf met de hand grootgebracht en het is volgroeit tot een mooie gezonde vogel! </p>
         </div>
        <div id="noa">
            <h4>Noa de europese buizerd</h4>
            <img id="noaimg" src="noa.png" />
             <ul>
                <li>Soort: Europese buizerd</li>
                <li>Latijnse naam: Buteo Buteo</li>
                <li>Geslacht: Tarsel/Mannelijk</li>
                <li>Leefgebied: Groot deel van Europa en delen van Azie</li>
                <li>Spanwijdte: 1.10 tot 1.30</li>
                <li>Gewicht: 800 gr tot 1100 gr</li>
                <li>Lengte: 51 tot 57 cm cm</li>
                <li>Prooi: Konijnen,muizen,eekhoorns,waterhoen en kleine vogels.</li>
                <li>Broedseizoen: Februari tot juni</li>
            </ul>
            <p>
Noa is toen hij 1 jaar oud was in ons team gekomen. Noa is vanaf het begin al een hele fijne vogel om mee te werken. Hij is snel van vertrouwen en vliegen kan hij als de beste. Ook kan hij heerlijk tegen je aan kletsen als je gewoon even lekker met hem gaat zitten. 
</p>
        </div>
    </div>
</asp:Content>
