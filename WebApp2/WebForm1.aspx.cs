using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace WebApp2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand("select * from Movie", con);
            con.Open();
            SqlDataReader rdr = com.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand("Insert into Movie(Name, TktSold, TktCost) values(@name,@sold,@cost)", con);
            con.Open();
            int pCost = Convert.ToInt32(TextBox3.Text);
            int pSold = Convert.ToInt32(TextBox2.Text);
            com.Parameters.AddWithValue("name", TextBox1.Text);
            com.Parameters.AddWithValue("sold", pSold);
            com.Parameters.AddWithValue("cost", pCost);
            com.ExecuteNonQuery();
            con.Close();

        }
    }
}