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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Groove" DisplayMode="List" Font-Names="Verdana" Font-Size="Small" ForeColor="#CC0000" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

