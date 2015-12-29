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
            <td colspan="2" style="text-align: center">Witaj na stronie...</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Tytuł</td>
            <td>
                    <asp:DropDownList ID="ddlTytuł" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Nazwisko</td>
            <td>
                    <asp:DropDownList ID="ddlNazwisko" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Imiona</td>
            <td>
                    <asp:DropDownList ID="ddlImiona" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Gatunek</td>
            <td>
                    <asp:DropDownList ID="ddlGatunek" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
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
        </table>
</asp:Content>

