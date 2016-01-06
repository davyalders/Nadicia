<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Nadicia.Models.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Main.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="reg1">
        <h2>Hier kunt u contact opnemen met Valkerij Nadicia</h2>

        <table cellpadding="3" cellspacing="3" style="width: 100%">
            <tr>
                <td style="width: 88px">Naam</td>
                <td style="width: 234px">
                    <asp:TextBox ID="tbNaam" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td style="width: 831px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbNaam" ErrorMessage="Voer uw naam in." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 88px; height: 43px">Email</td>
                <td style="width: 234px; height: 43px">
                    <asp:TextBox ID="tbEmail" runat="server" Width="206px"></asp:TextBox>
                </td>
                <td style="width: 831px; height: 43px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Voer een juist emailadres in." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 88px">Bericht</td>
                <td style="width: 234px">
                    <asp:TextBox ID="tbBericht" runat="server" Height="181px" Width="432px" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="btVerzend" runat="server" OnClick="Button1_Click" Text="Verzend" />
                </td>
                <td style="width: 831px">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbBericht" ErrorMessage="Er mogen maximaal 200 karakters worden ingevoerd." OnServerValidate="CustomValidator1_ServerValidate" ForeColor="#CC0000"></asp:CustomValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />

    </div>
</asp:Content>
