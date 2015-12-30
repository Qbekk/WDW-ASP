<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="potwierdzenie.aspx.cs" Inherits="potwierdzenie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 476px;
        }
        .auto-style4 {
            width: 172px;
        }
        .auto-style5 {
            width: 280px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 172px;
            height: 22px;
        }
        .auto-style8 {
            width: 280px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td colspan="2"><strong style="text-align: center">Dane książki:</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">Tytuł:</td>
            <td class="auto-style5">
                <asp:Label ID="LblTytul" runat="server" OnDataBinding="Page_Load"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Autor:</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Gatunek:</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">ID książki</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4">Wydawnictwo:</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Data wydania:</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

