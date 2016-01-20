﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logowanie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Login1.DestinationPageUrl = "start.aspx";
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

        string login = Login1.UserName;
        string haslo = Login1.Password;

        if ((login == "admin" && haslo == "admin") || (login == "student" && haslo == "student"))
        {

            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(login,
                Login1.RememberMeSet);
        }
    }
}