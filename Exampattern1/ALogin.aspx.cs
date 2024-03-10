using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Exampattern1
{
    public partial class ALogin : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
           

        }

        protected void lblLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where userid='"+txtuser.Text+"' and pwd='"+txtpwd.Text+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    Response.Redirect("Awelcome1.aspx");
                }
                
            }
            else
                lblmsg.Text = "invalid credential";
        }
    }
}