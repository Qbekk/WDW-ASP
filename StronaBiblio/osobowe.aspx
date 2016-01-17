<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="osobowe.aspx.cs" Inherits="osobowe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 473px;
    }
    .auto-style4 {
        width: 219px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">Imię</td>
        <td>
            <asp:TextBox ID="txtImie" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtImie" Display="Dynamic" ErrorMessage="Brak podania imienia">!</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtImie" Display="Dynamic" ErrorMessage="Zbyt krótka długość imienia" OnServerValidate="CustomValidator1_ServerValidate">!</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Nazwisko</td>
        <td>
            <asp:TextBox ID="txtNazwisko" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNazwisko" Display="Dynamic" ErrorMessage="Brak podania nazwiska">!</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Adres e-mail</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Błędny format e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">!</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Numer telefonu</td>
        <td>
            <asp:TextBox ID="txtTelefon" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefon" ErrorMessage="Błędny format numeru telefonu" ValidationExpression="[0-9]{9}">!</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Preferowana forma kontaktu</td>
        <td>
            <asp:RadioButtonList ID="rblKontakt" runat="server">
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Uwagi</td>
        <td>
            <textarea id="txtUwagi" cols="20" name="S1" rows="2"></textarea></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Przejdź dalej" BackColor="#66CCFF" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" />
        </td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Groove" DisplayMode="List" Font-Names="Verdana" Font-Size="Small" ForeColor="#CC0000" ShowMessageBox="True" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:SqlDataSource ID="DbRezerwacje" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Rezerwacje] WHERE [ID] = ? AND (([Imie] = ?) OR ([Imie] IS NULL AND ? IS NULL)) AND (([Nazwisko] = ?) OR ([Nazwisko] IS NULL AND ? IS NULL)) AND (([data] = ?) OR ([data] IS NULL AND ? IS NULL)) AND (([Dlugosc] = ?) OR ([Dlugosc] IS NULL AND ? IS NULL)) AND (([IDksiazki] = ?) OR ([IDksiazki] IS NULL AND ? IS NULL)) AND (([telefon] = ?) OR ([telefon] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Rezerwacje] ([ID], [Imie], [Nazwisko], [data], [Dlugosc], [IDksiazki], [telefon], [email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [Rezerwacje]" UpdateCommand="UPDATE [Rezerwacje] SET [Imie] = ?, [Nazwisko] = ?, [data] = ?, [Dlugosc] = ?, [IDksiazki] = ?, [telefon] = ?, [email] = ? WHERE [ID] = ? AND (([Imie] = ?) OR ([Imie] IS NULL AND ? IS NULL)) AND (([Nazwisko] = ?) OR ([Nazwisko] IS NULL AND ? IS NULL)) AND (([data] = ?) OR ([data] IS NULL AND ? IS NULL)) AND (([Dlugosc] = ?) OR ([Dlugosc] IS NULL AND ? IS NULL)) AND (([IDksiazki] = ?) OR ([IDksiazki] IS NULL AND ? IS NULL)) AND (([telefon] = ?) OR ([telefon] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL))" OnSelecting="DbRezerwacje_Selecting">
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
                    <asp:SessionParameter DefaultValue="" Name="ID" SessionField="idrezer" Type="Int32" />
                    <asp:ControlParameter ControlID="txtImie" Name="Imie" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNazwisko" Name="Nazwisko" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="data" PropertyName="SelectedDate" Type="DateTime" />
                    <asp:Parameter DefaultValue="35" Name="Dlugosc" Type="Int32" />
                    <asp:SessionParameter DefaultValue="4" Name="IDksiazki" SessionField="tytul" Type="Int32" />
                    <asp:ControlParameter ControlID="txtTelefon" Name="telefon" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
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
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

