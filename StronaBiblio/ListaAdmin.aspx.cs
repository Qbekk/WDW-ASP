using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaAdmin : System.Web.UI.Page
{
    List<GridView> listy = new List<GridView>();

    protected void Page_Load(object sender, EventArgs e)
    {
        listy.Add(GridAutorzy);
        listy.Add(GridRezerwacje);
        listy.Add(GridTytuly);
        listy.Add(GridGatunki);
        Schowaj();
        GridRezerwacje.Visible = true;
    }

    protected void Schowaj()
    {
        foreach (var lista in listy)
            lista.Visible = false;
    }

    protected void RadioAutorzy_CheckedChanged(object sender, EventArgs e)
    {
        Schowaj();
        GridAutorzy.Visible = true;
    }

    protected void RadioRezerwacje_CheckedChanged(object sender, EventArgs e)
    {
        Schowaj();
        GridRezerwacje.Visible = true;
    }

    protected void RadioTytuly_CheckedChanged(object sender, EventArgs e)
    {
        Schowaj();
        GridTytuly.Visible = true;
    }
    protected void RadioGatunki_CheckedChanged(object sender, EventArgs e)
    {
        Schowaj();
        GridGatunki.Visible = true;
    }
}   