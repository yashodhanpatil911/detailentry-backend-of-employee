using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.Xml.Linq;
using System.Security.Cryptography;

namespace detailentry
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""|DataDirectory|\learning.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State==ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();

            disp_data();
        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into table1 values('"+ firstname.Text +"','"+ lastname.Text +"','"+ city.Text +"')";
            cmd.ExecuteNonQuery();
            
            firstname.Text = "";
            lastname.Text = "";
            city.Text = "";
            disp_data();
        }
        public void disp_data()
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from table1";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text; 
            cmd.CommandText = "update table1 set firstname = '" + firstname.Text +"', lastname = '"+ lastname.Text +"' , city='"+ city.Text +"' Where id = "+ Convert.ToInt32(oldid.Text) +"";
            cmd.ExecuteNonQuery();
            firstname.Text = "";
            lastname.Text = "";
            city.Text = "";
            
            disp_data();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
              SqlCommand cmd = conn.CreateCommand();
               cmd.CommandType = CommandType.Text;
               cmd.CommandText = "delete from table1 where id = '" + oldid.Text +"'";
               cmd.ExecuteNonQuery();

               oldid.Text = "";
               disp_data();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
                
            disp_data();
        }
    }
}