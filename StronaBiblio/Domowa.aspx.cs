using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Domowa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*Page.Response.Write("Dokonano rezerwacji dla: "
            + ddlNazwisko.SelectedValue);*/
        Response.Redirect("Rezerwacja.aspx?Nazwisko=" +
            ddlNazwisko.SelectedValue);
    }
}