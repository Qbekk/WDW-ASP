<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style5 {
            width: 123px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 123px;
            height: 23px;
        }
        .auto-style4 {
            width: 123px;
        }
        #taUwagi {
            height: 106px;
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 25px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; background-color: #339933; border-style: groove; border-width: medium">&nbsp;</td>
                <td class="auto-style3" colspan="2" style="font-family: Arial, Helvetica, sans-serif; background-color: #339933; border-style: groove; border-width: medium">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; background-color: #339933; border-style: groove; border-width: medium">&nbsp;</td>
                <td class="auto-style3" colspan="2" style="font-family: Arial, Helvetica, sans-serif; background-color: #339933; border-style: groove; border-width: medium; text-align: center;">Rezerwacja &quot;Domowa biblioteczka&quot;</td>
            </tr>
            <tr>
                <td class="auto-style3" rowspan="8" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                <td class="auto-style3" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Tytuł</td>
                <td class="auto-style2" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Imię autora</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Nazwisko</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">gatunek</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">data wydania</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">wydawnictwo</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">data rezerwacji</td>
                <td class="auto-style6" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Data rezerwacji</td>
                <td class="auto-style2" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
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
                <td class="auto-style7" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                <td class="auto-style7" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Liczba egzemplarzy</td>
                <td class="auto-style2" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <asp:ListBox ID="ListBox1" runat="server" Height="55px" Width="57px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                <td class="auto-style4" style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">Uwagi</td>
                <td style="border: thin groove #000000; background-color: #CCCCFF; font-family: Arial, Helvetica, sans-serif">
                    <textarea id="taUwagi" runat="server" cols="20" name="S1" rows="1"></textarea></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
