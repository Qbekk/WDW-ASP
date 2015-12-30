<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Domowa.aspx.cs" Inherits="Domowa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 249px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">Tytuł</td>
            <td>
                    <asp:DropDownList ID="ddlTytuł" runat="server" AutoPostBack="True" DataSourceID="SqlBazaBiblio" DataTextField="Tytul" DataValueField="Tytul">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlBazaBiblio" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [Tytul] FROM [tytuly] ORDER BY [Tytul]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Nazwisko</td>
            <td>
                    <asp:DropDownList ID="ddlNazwisko" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nazwiska" DataValueField="Nazwiska">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT tytuly.ID, Autorzy.Nazwiska FROM (Autorzy INNER JOIN tytuly ON Autorzy.ID = tytuly.Autor)"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Imiona</td>
            <td>
                    <asp:DropDownList ID="ddlImiona" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Imiona" DataValueField="Imiona">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT Autorzy.Imiona, Autorzy.ID, tytuly.ID AS Expr1 FROM (Autorzy INNER JOIN tytuly ON Autorzy.ID = tytuly.Autor)"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Gatunek</td>
            <td>
                    <asp:DropDownList ID="ddlGatunek" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Gatunke" DataValueField="Gatunke">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT tytuly.ID, Gatunki.Gatunke FROM (tytuly INNER JOIN Gatunki ON tytuly.Gatunek = Gatunki.ID)"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Data wydania</td>
            <td>
                    <asp:DropDownList ID="ddlDataWydania" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Wydawnictwo</td>
            <td>
                    <asp:DropDownList ID="ddlWydawnictwo" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

