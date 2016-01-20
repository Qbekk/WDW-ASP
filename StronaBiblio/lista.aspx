<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lista.aspx.cs" Inherits="lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Lista rezerwacji" CssClass="h2" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="DbRezer" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" SortExpression="ID" />
                        <asp:BoundField DataField="Imie" HeaderText="Imie" SortExpression="Imie" />
                        <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
                        <asp:BoundField DataField="data" DataFormatString="{0:yyyy-MM-dd}" HeaderText="data" SortExpression="Tytul" />
                        <asp:BoundField DataField="Dlugosc" HeaderText="Dlugosc" SortExpression="Dlugosc" />
                        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                        <asp:BoundField DataField="Imiona" HeaderText="Autor" SortExpression="Imiona" />
                        <asp:BoundField DataField="Nazwiska" SortExpression="Nazwiska" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DbRezer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT Rezerwacje.ID, Rezerwacje.Imie, Rezerwacje.Nazwisko, Rezerwacje.data, Rezerwacje.Dlugosc, Rezerwacje.telefon, Rezerwacje.email, tytuly.Tytul, Autorzy.Imiona, Autorzy.Nazwiska FROM ((Rezerwacje INNER JOIN tytuly ON Rezerwacje.IDksiazki = tytuly.ID) INNER JOIN Autorzy ON tytuly.Autor = Autorzy.ID) ORDER BY Rezerwacje.data"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Jeżeli w powyższej liście widzisz błąd, natychmiast skontaktuj się z administratorem poprzez adres email: admin@admin.ad"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

