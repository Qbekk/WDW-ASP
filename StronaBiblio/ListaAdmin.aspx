<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaAdmin.aspx.cs" Inherits="ListaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 148px;
        }
        .auto-style4 {
            width: 304px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:RadioButton ID="RadioRezerwacje" runat="server" AutoPostBack="True" Checked="True" GroupName="ListWybor" OnCheckedChanged="RadioRezerwacje_CheckedChanged" Text="Lista rezerwacji" />
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="RadioAutorzy" runat="server" AutoPostBack="True" GroupName="ListWybor" OnCheckedChanged="RadioAutorzy_CheckedChanged" Text="Lista Autorów" />
            </td>
            <td>
                <asp:RadioButton ID="RadioTytuly" runat="server" AutoPostBack="True" GroupName="ListWybor" OnCheckedChanged="RadioTytuly_CheckedChanged" Text="Lista Książek" />
            </td>
            <td class="auto-style4">
                <asp:RadioButton ID="RadioGatunki" runat="server" AutoPostBack="True" GroupName="ListWybor" OnCheckedChanged="RadioGatunki_CheckedChanged" Text="Lista Gatunków" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridRezerwacje" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DBRezer">
                    <Columns>
                        <asp:CommandField CancelText="Anuluj" DeleteText="Usuń" EditText="Edytuj" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Zmień" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Imie" HeaderText="Imie" SortExpression="Imie" />
                        <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
                        <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                        <asp:BoundField DataField="Dlugosc" HeaderText="Dlugosc" SortExpression="Dlugosc" />
                        <asp:BoundField DataField="IDksiazki" HeaderText="IDksiazki" SortExpression="IDksiazki" />
                        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DBRezer" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Rezerwacje] WHERE [ID] = ? AND (([Imie] = ?) OR ([Imie] IS NULL AND ? IS NULL)) AND (([Nazwisko] = ?) OR ([Nazwisko] IS NULL AND ? IS NULL)) AND (([data] = ?) OR ([data] IS NULL AND ? IS NULL)) AND (([Dlugosc] = ?) OR ([Dlugosc] IS NULL AND ? IS NULL)) AND (([IDksiazki] = ?) OR ([IDksiazki] IS NULL AND ? IS NULL)) AND (([telefon] = ?) OR ([telefon] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Rezerwacje] ([ID], [Imie], [Nazwisko], [data], [Dlugosc], [IDksiazki], [telefon], [email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [Rezerwacje]" UpdateCommand="UPDATE [Rezerwacje] SET [Imie] = ?, [Nazwisko] = ?, [data] = ?, [Dlugosc] = ?, [IDksiazki] = ?, [telefon] = ?, [email] = ? WHERE [ID] = ? AND (([Imie] = ?) OR ([Imie] IS NULL AND ? IS NULL)) AND (([Nazwisko] = ?) OR ([Nazwisko] IS NULL AND ? IS NULL)) AND (([data] = ?) OR ([data] IS NULL AND ? IS NULL)) AND (([Dlugosc] = ?) OR ([Dlugosc] IS NULL AND ? IS NULL)) AND (([IDksiazki] = ?) OR ([IDksiazki] IS NULL AND ? IS NULL)) AND (([telefon] = ?) OR ([telefon] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Imie" Type="String" />
                        <asp:Parameter Name="original_Imie" Type="String" />
                        <asp:Parameter Name="original_Nazwisko" Type="String" />
                        <asp:Parameter Name="original_Nazwisko" Type="String" />
                        <asp:Parameter Name="original_data" Type="DateTime" />
                        <asp:Parameter Name="original_data" Type="DateTime" />
                        <asp:Parameter Name="original_Dlugosc" Type="Int32" />
                        <asp:Parameter Name="original_Dlugosc" Type="Int32" />
                        <asp:Parameter Name="original_IDksiazki" Type="Int32" />
                        <asp:Parameter Name="original_IDksiazki" Type="Int32" />
                        <asp:Parameter Name="original_telefon" Type="Int32" />
                        <asp:Parameter Name="original_telefon" Type="Int32" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Imie" Type="String" />
                        <asp:Parameter Name="Nazwisko" Type="String" />
                        <asp:Parameter Name="data" Type="DateTime" />
                        <asp:Parameter Name="Dlugosc" Type="Int32" />
                        <asp:Parameter Name="IDksiazki" Type="Int32" />
                        <asp:Parameter Name="telefon" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Imie" Type="String" />
                        <asp:Parameter Name="Nazwisko" Type="String" />
                        <asp:Parameter Name="data" Type="DateTime" />
                        <asp:Parameter Name="Dlugosc" Type="Int32" />
                        <asp:Parameter Name="IDksiazki" Type="Int32" />
                        <asp:Parameter Name="telefon" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Imie" Type="String" />
                        <asp:Parameter Name="original_Imie" Type="String" />
                        <asp:Parameter Name="original_Nazwisko" Type="String" />
                        <asp:Parameter Name="original_Nazwisko" Type="String" />
                        <asp:Parameter Name="original_data" Type="DateTime" />
                        <asp:Parameter Name="original_data" Type="DateTime" />
                        <asp:Parameter Name="original_Dlugosc" Type="Int32" />
                        <asp:Parameter Name="original_Dlugosc" Type="Int32" />
                        <asp:Parameter Name="original_IDksiazki" Type="Int32" />
                        <asp:Parameter Name="original_IDksiazki" Type="Int32" />
                        <asp:Parameter Name="original_telefon" Type="Int32" />
                        <asp:Parameter Name="original_telefon" Type="Int32" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridAutorzy" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DBAutor">
                    <Columns>
                        <asp:CommandField CancelText="Anuluj" DeleteText="Usuń" EditText="Edytuj" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Zmień" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Nazwiska" HeaderText="Nazwiska" SortExpression="Nazwiska" />
                        <asp:BoundField DataField="Imiona" HeaderText="Imiona" SortExpression="Imiona" />
                        <asp:BoundField DataField="Gatunek" HeaderText="Gatunek" SortExpression="Gatunek" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DBAutor" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Autorzy] WHERE [ID] = ? AND (([Nazwiska] = ?) OR ([Nazwiska] IS NULL AND ? IS NULL)) AND (([Imiona] = ?) OR ([Imiona] IS NULL AND ? IS NULL)) AND (([Gatunek] = ?) OR ([Gatunek] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Autorzy] ([ID], [Nazwiska], [Imiona], [Gatunek]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [Autorzy]" UpdateCommand="UPDATE [Autorzy] SET [Nazwiska] = ?, [Imiona] = ?, [Gatunek] = ? WHERE [ID] = ? AND (([Nazwiska] = ?) OR ([Nazwiska] IS NULL AND ? IS NULL)) AND (([Imiona] = ?) OR ([Imiona] IS NULL AND ? IS NULL)) AND (([Gatunek] = ?) OR ([Gatunek] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Nazwiska" Type="String" />
                        <asp:Parameter Name="original_Nazwiska" Type="String" />
                        <asp:Parameter Name="original_Imiona" Type="String" />
                        <asp:Parameter Name="original_Imiona" Type="String" />
                        <asp:Parameter Name="original_Gatunek" Type="Int32" />
                        <asp:Parameter Name="original_Gatunek" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Nazwiska" Type="String" />
                        <asp:Parameter Name="Imiona" Type="String" />
                        <asp:Parameter Name="Gatunek" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nazwiska" Type="String" />
                        <asp:Parameter Name="Imiona" Type="String" />
                        <asp:Parameter Name="Gatunek" Type="Int32" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Nazwiska" Type="String" />
                        <asp:Parameter Name="original_Nazwiska" Type="String" />
                        <asp:Parameter Name="original_Imiona" Type="String" />
                        <asp:Parameter Name="original_Imiona" Type="String" />
                        <asp:Parameter Name="original_Gatunek" Type="Int32" />
                        <asp:Parameter Name="original_Gatunek" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridTytuly" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DBTytuly">
                    <Columns>
                        <asp:CommandField CancelText="Anuluj" DeleteText="Usuń" EditText="Edytuj" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Zmień" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                        <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                        <asp:BoundField DataField="Data Wydania" HeaderText="Data Wydania" SortExpression="Data Wydania" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DBTytuly" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [tytuly] WHERE [ID] = ? AND (([Tytul] = ?) OR ([Tytul] IS NULL AND ? IS NULL)) AND (([Autor] = ?) OR ([Autor] IS NULL AND ? IS NULL)) AND (([Data Wydania] = ?) OR ([Data Wydania] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tytuly] ([ID], [Tytul], [Autor], [Data Wydania]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [tytuly]" UpdateCommand="UPDATE [tytuly] SET [Tytul] = ?, [Autor] = ?, [Data Wydania] = ? WHERE [ID] = ? AND (([Tytul] = ?) OR ([Tytul] IS NULL AND ? IS NULL)) AND (([Autor] = ?) OR ([Autor] IS NULL AND ? IS NULL)) AND (([Data Wydania] = ?) OR ([Data Wydania] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Tytul" Type="String" />
                        <asp:Parameter Name="original_Tytul" Type="String" />
                        <asp:Parameter Name="original_Autor" Type="Int32" />
                        <asp:Parameter Name="original_Autor" Type="Int32" />
                        <asp:Parameter Name="original_Data_Wydania" Type="String" />
                        <asp:Parameter Name="original_Data_Wydania" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Tytul" Type="String" />
                        <asp:Parameter Name="Autor" Type="Int32" />
                        <asp:Parameter Name="Data_Wydania" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Tytul" Type="String" />
                        <asp:Parameter Name="Autor" Type="Int32" />
                        <asp:Parameter Name="Data_Wydania" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Tytul" Type="String" />
                        <asp:Parameter Name="original_Tytul" Type="String" />
                        <asp:Parameter Name="original_Autor" Type="Int32" />
                        <asp:Parameter Name="original_Autor" Type="Int32" />
                        <asp:Parameter Name="original_Data_Wydania" Type="String" />
                        <asp:Parameter Name="original_Data_Wydania" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridGatunki" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DBGatunki">
                    <Columns>
                        <asp:CommandField CancelText="Anuluj" DeleteText="Usuń" EditText="Edytuj" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Zmień" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Gatunke" HeaderText="Gatunek" SortExpression="Gatunke" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DBGatunki" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Gatunki] WHERE [ID] = ? AND (([Gatunke] = ?) OR ([Gatunke] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Gatunki] ([ID], [Gatunke]) VALUES (?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [Gatunki]" UpdateCommand="UPDATE [Gatunki] SET [Gatunke] = ? WHERE [ID] = ? AND (([Gatunke] = ?) OR ([Gatunke] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Gatunke" Type="String" />
                        <asp:Parameter Name="original_Gatunke" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Gatunke" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Gatunke" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Gatunke" Type="String" />
                        <asp:Parameter Name="original_Gatunke" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

