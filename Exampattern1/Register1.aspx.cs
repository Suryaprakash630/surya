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
    public partial class Register1 : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                Getdrop();
                Blood();
            }
            if (Session["uname"]!=null)
            {
                
                txtuser.Text=Session["uname"].ToString() ;
                ddblood.SelectedItem.Text=Session["Bgroup"].ToString() ;
                txtphno.Text=Session["phno"] .ToString() ;
                txtemail.Text=Session["Email"].ToString();
                ddcity.Text=Session["city"].ToString() ;
                btnreg.Text = "Update";
                Session.Abandon();
            }
            
        }
        void Getdrop()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from state", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds,"state");
            ddstate.DataSource = ds;
            ddstate.DataTextField = "sname";
            ddstate.DataValueField = "sid";

            ddstate.DataBind();
            ddstate.Items.Insert(0, "-Select-");
            

        }
        void Blood()
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from BloodGroup", con)
;           SqlDataReader dr = cmd.ExecuteReader();
            ddblood.DataSource = dr;
            ddblood.DataTextField = "Groupname";
            ddblood.DataBind();
            ddblood.Items.Insert(0, "-Select-");
        }

        
        protected void btnreg_Click(object sender, EventArgs e)
        {
            if (btnreg.Text == "Register")
            {
                //int eno = Empno();
                string uname = txtuser.Text;
                string pwd = txtpwd.Text;

                string gender = "";
                if (rbmale.Checked == true)
                    gender = rbmale.Text;
                else if (rbfemale.Checked ==true)
                    gender = rbfemale.Text;
                string lang = "";
                if (cktel.Checked == true)
                    lang =lang + cktel.Text;
                if (ckhin.Checked == true)
                    lang =lang +ckhin.Text;
                if (cktel.Checked == true)
                    lang =lang + ckeng.Text;
                string state = ddstate.SelectedItem.Text;
                string city = ddcity.SelectedItem.Text;
                string blood = ddblood.Text;
                string mail = txtemail.Text;
                string phno = txtphno.Text;
                SqlConnection con = new SqlConnection(k);
                con.Open();
                string q = "insert into project values(@uname,@pwd,@gender,@lang,@state,@city,@Bgroup,@phno,@Email)";


                SqlCommand cmd = new SqlCommand(q, con);
               // cmd.Parameters.AddWithValue("@id", eno);

                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@pwd", pwd);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@lang", lang);
                cmd.Parameters.AddWithValue("@state", state);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@Bgroup", blood)
                
;
                cmd.Parameters.AddWithValue("@phno", phno);
                cmd.Parameters.AddWithValue("@Email", mail);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                    lblmsg.Text = "inserted Record successfull";
                else
                    lblmsg.Text = "failed Record";
            }
            else if(btnreg.Text=="Update")
            {
                //int eno = Empno();
                string uname = txtuser.Text;
                string pwd = txtpwd.Text;

                string gender = "";
                if (rbmale.Checked == true)
                    gender = rbmale.Text;
                else if (rbfemale.Checked == true)
                    gender = rbfemale.Text;
                string lang = "";
                if (cktel.Checked == true)
                    lang = cktel.Text;
                if (ckhin.Checked == true)
                    lang = ckhin.Text;
                if (cktel.Checked ==true)
                    lang = ckeng.Text;
                string state = ddstate.SelectedItem.Text;
                string city = ddcity.SelectedItem.Text;
                string blood = ddblood.Text;
                string mail = txtemail.Text;
                string phno = txtphno.Text;
                SqlConnection con = new SqlConnection(k);
                con.Open();
                string q = "Update project set pwd='"+pwd+"',gender='"+gender+"',lang='"+lang+"',state='"+state+"',city='"+city+"',Bgroup='"+blood+"',phno='"+phno+"',Email='"+mail+ "' whereuname='" + uname + "' " ;


                SqlCommand cmd = new SqlCommand(q, con);


                //cmd.Parameters.AddWithValue("@uname", uname);
                //cmd.Parameters.AddWithValue("@pwd", pwd);
                //cmd.Parameters.AddWithValue("@gender", gender);
                //cmd.Parameters.AddWithValue("@lang", lang);
                //cmd.Parameters.AddWithValue("@state", state);
                //cmd.Parameters.AddWithValue("@city", city);
                //cmd.Parameters.AddWithValue("@Bgroup", blood);
                //cmd.Parameters.AddWithValue("@phno", phno);
                //cmd.Parameters.AddWithValue("@Email", mail);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    lblmsg.Text = "updated Record successfull";
                    Response.Redirect("Details.aspx");
                }
                else
                {
                    lblmsg.Text = "failed Record";
                }
                btnreg.Text = "Register";
                clear();
            }
        }

        protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from city where sid='" + ddstate.SelectedItem.Value+ "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
           // SqlDataReader dr = cmd.ExecuteReader();


            ddcity.DataSource = ds;
            ddcity.DataTextField = "cname";
            
            ddcity.DataBind();
            
            ddcity.Items.Insert(0, "-Select-");
        }
        void clear()
        {
            txtuser.Text = "";
            txtpwd.Text = "";
            txtphno.Text = "";
            txtemail.Text = "";
            ddstate.SelectedIndex = 0;
            ddcity.SelectedIndex = 0;
            ddblood.SelectedIndex = 0;
            rbfemale.Checked = false;
            rbmale.Checked = false;
            ckeng.Checked = false;
            ckhin.Checked = false;
            cktel.Checked = false;
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            clear();
            
        }

        protected void ddblood_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        
    }
}