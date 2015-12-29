<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rezerwacja.aspx.cs" Inherits="Rezerwacja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            height: 22px;
        }
        .auto-style9 {
            width: 268px;
        }
        .auto-style10 {
            height: 22px;
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">Data rezerwacji</td>
            <td>
                    <asp:DropDownList ID="ddlDataRezerwacji" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style8">
                    <asp:Calendar ID="cWylot" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">Długość rezerwacji</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlDługośćRezerwacji" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Liczba egzemplarzy</td>
            <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="55px" Width="57px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:ListBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style9">Uwagi</td>
            <td>
                    <textarea id="taUwagi" runat="server" cols="20" name="S1" rows="1"></textarea></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Rezerwuj" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

