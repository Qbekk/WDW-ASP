<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Domowa.aspx.cs" Inherits="Domowa" MaintainScrollPositionOnPostback="true" %>

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
            <td class="auto-style8">Gatunek</td>
            <td>
                    <asp:DropDownList ID="ddlGatunek" runat="server" AutoPostBack="True" DataSourceID="SqlGatunek" DataTextField="Gatunke" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlGatunek" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Gatunke] FROM [Gatunki]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Nazwisko</td>
            <td>
                    <asp:DropDownList ID="ddlNazwisko" runat="server" AutoPostBack="True" DataSourceID="SqlNazwisko" DataTextField="Nazwiska" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlNazwisko" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Nazwiska] FROM [Autorzy]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Tytuł</td>
            <td>
                    <asp:DropDownList ID="ddlTytuł" runat="server" AutoPostBack="True" DataSourceID="Sqltytul" DataTextField="Tytul" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqltytul" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [Autor], [Gatunek], [Tytul], [ID] FROM [tytuly] WHERE (([Gatunek] = ?) AND ([Autor] = ?))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlGatunek" Name="Gatunek" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlNazwisko" Name="Autor" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Imiona</td>
            <td>
                    <asp:DropDownList ID="ddlImiona" runat="server" AutoPostBack="True">
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
            <td class="auto-style8">Data wydania</td>
            <td>
                    <asp:DropDownList ID="ddlDataWydania" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="White" OnClick="Button1_Click" Text="Do rezerwacji" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

