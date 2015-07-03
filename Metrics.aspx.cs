using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITIL
{
    public partial class Metrics : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["itmetric"].ConnectionString);

        // page load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlDataAdapter adptr = new SqlDataAdapter("SELECT distinct area FROM metric_info", baglanti);
                    DataTable tbl = new DataTable();
                    adptr.Fill(tbl);
                    dropMetricArea.DataSource = tbl;
                    dropMetricArea.DataTextField = "area";
                    dropMetricArea.DataBind();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    baglanti.Close();
                }
            }
        }

        // choose metric
        protected void dropMetricArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            dropMetric.Items.Clear();
            dropMetric.DataBind();
            dropMetric.Items.Add("Choose a Metric");

            try
            {
                SqlDataAdapter adptr = new SqlDataAdapter("SELECT * FROM metric_info where area = '" + dropMetricArea.Text + "'", baglanti);
                DataTable tbl = new DataTable();
                adptr.Fill(tbl);
                dropMetric.DataSource = tbl;
                dropMetric.DataTextField = "name";
                dropMetric.DataValueField = "id";
                dropMetric.DataBind();
            }
            catch (Exception)
            {
                throw;
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
                if (x is DropDownList)
                {
                    (x as DropDownList).SelectedIndex = 0;
                }
                temizle(x);
            }
        }

        // adding
        protected void btnAddInfo_Click(object sender, EventArgs e)
        {
            if (dropMetricArea.SelectedIndex == 0 || dropMetric.SelectedIndex == 0)
            {
                lblInfo.Text = "Choose an Area/Metric";
            }
            else
            {
                try
                {
                    baglanti.Open();
                    string sorgu = "INSERT INTO metric_target VALUES(@metric_id,@Jan,@Feb,@Mrc,@Apr,@May,@Jun,@Jul,@Agu,@Sep,@Oct,@Nov,@Dec)";
                    SqlCommand komut = new SqlCommand(sorgu, baglanti);
                    komut.Parameters.AddWithValue("@metric_id", dropMetric.SelectedItem.Value);
                    komut.Parameters.AddWithValue("@Jan", Convert.ToDecimal(txtT1.Text));
                    komut.Parameters.AddWithValue("@Feb", Convert.ToDecimal(txtT2.Text));
                    komut.Parameters.AddWithValue("@Mrc", Convert.ToDecimal(txtT3.Text));
                    komut.Parameters.AddWithValue("@Apr", Convert.ToDecimal(txtT4.Text));
                    komut.Parameters.AddWithValue("@May", Convert.ToDecimal(txtT5.Text));
                    komut.Parameters.AddWithValue("@Jun", Convert.ToDecimal(txtT6.Text));
                    komut.Parameters.AddWithValue("@Jul", Convert.ToDecimal(txtT7.Text));
                    komut.Parameters.AddWithValue("@Agu", Convert.ToDecimal(txtT8.Text));
                    komut.Parameters.AddWithValue("@Sep", Convert.ToDecimal(txtT9.Text));
                    komut.Parameters.AddWithValue("@Oct", Convert.ToDecimal(txtT10.Text));
                    komut.Parameters.AddWithValue("@Nov", Convert.ToDecimal(txtT11.Text));
                    komut.Parameters.AddWithValue("@Dec", Convert.ToDecimal(txtT12.Text));
                    komut.ExecuteNonQuery();

                    string sorgu1 = "INSERT INTO metric_actual VALUES(@metric_id,@Jan,@Feb,@Mrc,@Apr,@May,@Jun,@Jul,@Agu,@Sep,@Oct,@Nov,@Dec)";
                    SqlCommand komut1 = new SqlCommand(sorgu1, baglanti);
                    komut1.Parameters.AddWithValue("@metric_id", dropMetric.SelectedItem.Value);
                    komut1.Parameters.AddWithValue("@Jan", Convert.ToDecimal(txtA1.Text));
                    komut1.Parameters.AddWithValue("@Feb", Convert.ToDecimal(txtA2.Text));
                    komut1.Parameters.AddWithValue("@Mrc", Convert.ToDecimal(txtA3.Text));
                    komut1.Parameters.AddWithValue("@Apr", Convert.ToDecimal(txtA4.Text));
                    komut1.Parameters.AddWithValue("@May", Convert.ToDecimal(txtA5.Text));
                    komut1.Parameters.AddWithValue("@Jun", Convert.ToDecimal(txtA6.Text));
                    komut1.Parameters.AddWithValue("@Jul", Convert.ToDecimal(txtA7.Text));
                    komut1.Parameters.AddWithValue("@Agu", Convert.ToDecimal(txtA8.Text));
                    komut1.Parameters.AddWithValue("@Sep", Convert.ToDecimal(txtA9.Text));
                    komut1.Parameters.AddWithValue("@Oct", Convert.ToDecimal(txtA10.Text));
                    komut1.Parameters.AddWithValue("@Nov", Convert.ToDecimal(txtA11.Text));
                    komut1.Parameters.AddWithValue("@Dec", Convert.ToDecimal(txtA12.Text));
                    komut1.ExecuteNonQuery();

                    lblInfo.Text = "Kayıt Başarıyla Gerçekleştirildi.";

                    temizle(this);

                }
                catch (Exception)
                {
                    lblInfo.Text = "Kayıt Ekleme Başarısız!";
                }
                finally
                {
                    baglanti.Close();
                }
            }
        }

        // cancel
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            temizle(this);
        }
    }
}