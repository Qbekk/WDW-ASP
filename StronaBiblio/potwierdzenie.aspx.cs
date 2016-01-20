using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class potwierdzenie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["tytul"] == null)
        {
            Response.Redirect("default.aspx");
        }
        string idtytul=Session["tytul"].ToString();
       


    }
    protected void BtnCofnij_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void BtnDalej_Click(object sender, EventArgs e)
    {
        Response.Redirect("osobowe.aspx?Tytuł=" +
            Session["tytul"]);
    }
}


/*
SELECT tytuly.Tytul, Gatunki.Gatunke, Autorzy.Nazwiska, tytuly.[Data Wydania] FROM ((Autorzy INNER JOIN Gatunki ON Autorzy.ID = Gatunki.ID) INNER JOIN tytuly ON Autorzy.ID = tytuly.Autor AND Gatunki.ID = tytuly.Gatunek)
<asp:SqlDataSource ID="SqlKsiazka" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [Autorzy] WHERE ([ID] = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID" SessionField="tytul" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>



    */
