<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logowanie.aspx.cs" Inherits="Logowanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" FailureText="Logowanie nieudane, spróbuj ponownie" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Zaloguj" OnAuthenticate="Login1_Authenticate" PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Hasło jest wymagane" RememberMeText="Zapamiętaj mnie" TitleText="Logowanie" UserNameLabelText="Email:" UserNameRequiredErrorMessage="Musisz podac email" Width="368px">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Width="20%" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
</asp:Content>

