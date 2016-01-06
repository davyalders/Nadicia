<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nadicia._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Main.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="reg1">
        <h2>Welkom op de website van valkerij nadicia!</h2>
        <p>Altijd al nieuwsgierig geweest naar wat valkerij nou precies inhoudt? of altijd al eens met een roofvogel of uil willen vliegen? Dat kan allemaal bij ons en nog veel meer.</p>
        <p>Wij komen door heel nederland en maken van elke opdracht een onvergetelijke dag! </p>

        <h3>Aankomende evenementen</h3>

            <asp:DataList ID="d1" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><%#Eval("naam")%>/></td>
                            <td><%#Eval("beschrijving") %></td>
                            <td><%#Eval("datum")%></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </div>
</asp:Content>
