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
    public partial class Details : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
                datafill();
            
            
        }
        void datafill()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select uid,uname,Bgroup,phno,Email,city from project ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="cmddelete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Control c1 = row.FindControl("Label2");
                Label l2 = (Label)c1;
                SqlConnection con = new SqlConnection(k);
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from project where uname='" +l2.Text+ "'", con);
                cmd.ExecuteNonQuery();
              
               
                datafill();
            }
            else if(e.CommandName=="cmdedit")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Label l1 = (Label)row.FindControl("Label1");
                Label l2 = (Label)row.FindControl("Label2");
                Label l3 = (Label)row.FindControl("Label3");
                Label l4 = (Label)row.FindControl("Label4");
                Label l5 = (Label)row.FindControl("Label5");
                Label l6 = (Label)row.FindControl("Label6");
                Session["uid"] = l1.Text;
                Session["uname"] = l2.Text;
                Session["Bgroup"] = l3.Text;
                Session["phno"] = l4.Text;
                Session["Email"] = l5.Text;
                Session["city"] = l6.Text;
                Response.Redirect("Register1.aspx");
            }
            
        }
    }
}