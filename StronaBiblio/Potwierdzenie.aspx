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
        .auto-style9 {
            width: 172px;
            height: 23px;
        }
        .auto-style10 {
            width: 280px;
            height: 23px;
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
                <asp:Label ID="LblTytul" runat="server" Text="Bład wczytania tytułu!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Autor:</td>
            <td class="auto-style5">
                <asp:Label ID="LblAutor" runat="server" Text="Bład wczytania autora"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Gatunek:</td>
            <td class="auto-style5">
                <asp:Label ID="LblGatunek" runat="server" Text="Bład wczytania gatunku"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">ID książki</td>
            <td class="auto-style8">
                <asp:Label ID="LblTytulID" runat="server" OnDataBinding="Page_Load"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Wydawnictwo:</td>
            <td class="auto-style5">
                <asp:Label ID="LblWydawnictwo" runat="server" Text="Brak danych"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Data wydania:</td>
            <td class="auto-style10">
                <asp:Label ID="LblDataWydania" runat="server" Text="Brak danych"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlKsiazka" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Gatunke" HeaderText="Gatunke" SortExpression="Gatunke" />
                        <asp:BoundField DataField="Nazwiska" HeaderText="Nazwiska" SortExpression="Nazwiska" />
                        <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                        <asp:BoundField DataField="Data Wydania" HeaderText="Data Wydania" SortExpression="Data Wydania" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlKsiazka" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT Autorzy.Nazwiska, Gatunki.Gatunke, tytuly.[Data Wydania], tytuly.Tytul FROM ((Autorzy INNER JOIN tytuly ON Autorzy.ID = tytuly.Autor) INNER JOIN Gatunki ON tytuly.Gatunek = Gatunki.ID) WHERE (tytuly.ID = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID" SessionField="tytul" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" BackColor="#33CCFF" Text="do zaprogramowania" />
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

