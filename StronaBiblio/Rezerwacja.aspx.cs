using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rezerwacja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Response.Write.(Request.QueryString("Nazwisko"));
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {

            if (lbIlosc.SelectedValue == "" || lbIlosc.SelectedValue == null)
            {
                Label lbBlad = new Label();
                lbBlad.Text = "Proszę wybrać ilość egzemplarzy!";
                lbBlad.Style.Value = "font-family: verdana; font-size: medium; text-decoration: blink; color: #FF0000; font-style: italic";

                tdBlad.Controls.Add(lbBlad);
            }
        }



        /*Page.Response.Write("Dokonano rezerwacji dla: "
            + ddlNazwisko.SelectedValue);*/
        //Response.Redirect("") WEB -----------tworzenie ap   obsługa zdarz
    }
}