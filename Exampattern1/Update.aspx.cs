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
    public partial class Update : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                datafill();
            }
        }
        void datafill()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from project", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            datafill();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            datafill();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox t5 = (TextBox)c5;
            Control c6 = row.FindControl("TextBox6");
            TextBox t6 = (TextBox)c6;
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update project set uname='"+t2.Text+"',Bgroup='" + t3.Text + "',phno='" + t4.Text + "',Email='" + t5.Text + "',city='" + t6.Text + "' where uid='" + t1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex=-1;
            datafill();
        }
    }
}