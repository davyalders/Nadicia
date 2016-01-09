<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nadicia._default" %>
<%@ Register TagPrefix="ajaxToolit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=15.1.4.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Main.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div id="slider">

            <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick"></asp:Timer>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:Image ID="Image1" runat="server"/>
                </ContentTemplate>
                
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                </Triggers>
            </asp:UpdatePanel>

            <ajaxToolit:UpdatePanelAnimationExtender BehaviorID="animation" ID="upae" runat="server"
                                                     TargetControlID="UpdatePanel1">
                <Animations>
                    <OnUpdated>
                        <FadeIn Duration="1.0" Fps="24"/>
                    </OnUpdated>
                </Animations>
            </ajaxToolit:UpdatePanelAnimationExtender>


        </div>
        <div id="reg1">

            <h2>Welkom op de website van valkerij nadicia!</h2>
            <p>Altijd al nieuwsgierig geweest naar wat valkerij nou precies inhoudt? of altijd al eens met een roofvogel of uil willen vliegen? Dat kan allemaal bij ons en nog veel meer.</p>
            <p>Wij komen door heel nederland en maken van elke opdracht een onvergetelijke dag! </p>

            <h3>Aankomende evenementen</h3>

            <asp:DataList ID="d1" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><%#Eval("naam") %>/></td>
                            <td><%#Eval("beschrijving") %></td>
                            <td><%#Eval("datum") %></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>