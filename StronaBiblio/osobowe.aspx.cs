using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class osobowe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["tytul"]==null)
        {
            Response.Redirect("start.aspx");
        }
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtImie.Text.Length < 3)
        {
            args.IsValid = false;
        }

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            System.Data.DataView listarezerwacji
             = (System.Data.DataView)DbRezerwacje.Select(DataSourceSelectArguments.Empty);

            int idrezerw = listarezerwacji.Count;
            Session["idrezer"] = ++idrezerw;
            //txtImie.Text = idrezerw.ToString();

            DbRezerwacje.Insert();





        }
    }


    protected void DbRezerwacje_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtNazwisko.Text.Length < 2) // As
        {
            args.IsValid = false;
        }
    }
}
   