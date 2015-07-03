using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITIL
{
    public partial class AddOrListMetrics : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["itmetric"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddMetric_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                string sorgu = "INSERT INTO metric_info VALUES(@name,@area,@formula)";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@name", txtName.Text);
                komut.Parameters.AddWithValue("@area", txtArea.Text);
                komut.Parameters.AddWithValue("@formula", txtFormula.Text);
                komut.ExecuteNonQuery();

                GridView1.DataBind();
                lblAdding.Text = "Kayıt Başarıyla Gerçekleştirildi.";

                temizle(this);

            }
            catch (Exception)
            {
                lblAdding.Text = "Kayıt Ekleme Başarısız!";
            }
            finally
            {
                baglanti.Close();
            }
        }

        // clear
        public void temizle(Control control)
        {
            foreach (Control x in control.Controls)
            {
                if (x is TextBox)
                {
                    (x as TextBox).Text = String.Empty;
                }
                temizle(x);
            }
        }
    }
}