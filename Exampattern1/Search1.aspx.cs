using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
    

namespace Exampattern1
{
    public partial class Search1 : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
                blood();
        }
        void blood()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Bgroup from project ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            ddblood.DataSource = dr;
            ddblood.DataTextField = "Bgroup";
            
          //  ddblood.DataValueField = "Bid";
            ddblood.DataBind();
            ddblood.Items.Insert(0, "-select-");
        }
        void state()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select state from project where Bgroup='" + ddblood.SelectedItem.Value+ "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            ddstate.DataSource = dr;
            ddstate.DataTextField = "state";
            ddstate.DataBind();
            ddstate.Items.Insert(0, "-select-");


        }
        void city()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select city from project where state='" + ddstate.SelectedItem.Value + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            ddcity.DataSource = dr;
            ddcity.DataTextField = "city";
            ddcity.DataBind();
            ddcity.Items.Insert(0, "-select-");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select uid,uname,Bgroup,phno,Email,city  from project where city='" + ddcity.SelectedItem.Value + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }

        protected void ddblood_SelectedIndexChanged(object sender, EventArgs e)
        {
            state();
        }

        protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            city();
        }
    }
}