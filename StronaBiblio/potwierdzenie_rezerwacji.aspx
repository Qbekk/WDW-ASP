<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="potwierdzenie_rezerwacji.aspx.cs" Inherits="potwierdzenie_rezerwacji" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Twoja rezerwacja została dodana do bazy danych"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DbRezerwacja">
                    <Columns>
                        <asp:BoundField DataField="Imie" HeaderText="Imie" SortExpression="Imie" />
                        <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
                        <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                        <asp:BoundField DataField="Dlugosc" HeaderText="Dlugosc" SortExpression="Dlugosc" />
                        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="Nazwiska" HeaderText="Nazwiska" SortExpression="Nazwiska" />
                        <asp:BoundField DataField="Gatunke" HeaderText="Gatunke" SortExpression="Gatunke" />
                        <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                        <asp:BoundField DataField="Data Wydania" HeaderText="Data Wydania" SortExpression="Data Wydania" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DbRezerwacja" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT Rezerwacje.ID, Rezerwacje.Imie, Rezerwacje.Nazwisko, Rezerwacje.data, Rezerwacje.Dlugosc, Rezerwacje.IDksiazki, Rezerwacje.telefon, Rezerwacje.email, Autorzy.Nazwiska, Gatunki.Gatunke, tytuly.Tytul, tytuly.[Data Wydania] FROM ((tytuly INNER JOIN Rezerwacje ON tytuly.ID = Rezerwacje.IDksiazki) INNER JOIN (Gatunki INNER JOIN Autorzy ON Gatunki.ID = Autorzy.Gatunek) ON tytuly.Autor = Autorzy.ID) WHERE (Rezerwacje.ID = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID" SessionField="idrezer" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="ButtWyjsc" runat="server" OnClick="ButtWyjsc_Click" Text="Do bazy rezerwacji" BackColor="#FF66CC" Font-Underline="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

