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
        string idtytul=Session["tytul"].ToString();
        LblTytulID.Text = idtytul;
        
        
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
