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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td colspan="2"><strong style="text-align: center">Dane książki:</strong></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlKsiazka" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Gatunke" HeaderText="Gatunke" SortExpression="Gatunke" />
                        <asp:BoundField DataField="Nazwiska" HeaderText="Nazwiska" SortExpression="Nazwiska" />
                        <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                        <asp:BoundField DataField="Data Wydania" HeaderText="Data Wydania" SortExpression="Data Wydania" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlKsiazka" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT Gatunki.Gatunke, Autorzy.Nazwiska, tytuly.Tytul, tytuly.[Data Wydania] FROM ((Autorzy INNER JOIN Gatunki ON Autorzy.Gatunek = Gatunki.ID) INNER JOIN tytuly ON Autorzy.ID = tytuly.Autor)WHERE ([tytuly.ID] = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID" SessionField="tytul" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="BtnCofnij" runat="server" OnClick="BtnCofnij_Click" Text="Cofnij" Width="115px" BackColor="#FF6600" Font-Italic="True" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="BtnDalej" runat="server" BackColor="#33CCFF" Text="Rezerwuj Książkę" OnClick="BtnDalej_Click" Font-Underline="True" />
            </td>
        </tr>
    </table>
</asp:Content>

