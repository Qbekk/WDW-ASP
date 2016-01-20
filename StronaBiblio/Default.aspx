<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Domowa" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 249px;
        }
        .auto-style9 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style8">Gatunek</td>
            <td>
                    <asp:DropDownList ID="ddlGatunek" runat="server" AutoPostBack="True" DataSourceID="SqlGatunek" DataTextField="Gatunke" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlGatunek" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Gatunke] FROM [Gatunki]" OnSelecting="SqlGatunek_Selecting"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Nazwisko</td>
            <td>
                    <asp:DropDownList ID="ddlNazwisko" runat="server" AutoPostBack="True" DataSourceID="SqlNazwisko" DataTextField="Nazwiska" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlNazwisko" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Nazwiska] FROM [Autorzy] WHERE ([Gatunek] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlGatunek" DefaultValue="2" Name="Gatunek" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">Tytuł</td>
            <td>
                    <asp:DropDownList ID="ddlTytul" runat="server" AutoPostBack="True" DataSourceID="Sqltytul" DataTextField="Tytul" DataValueField="ID" OnSelectedIndexChanged="ddlTytul_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqltytul" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [Autor], [Tytul], [ID] FROM [tytuly] WHERE ([Autor] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlNazwisko" Name="Autor" PropertyName="SelectedValue" Type="Int32" DefaultValue="2" />
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
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="White" OnClick="Button1_Click" Text="Do rezerwacji" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

