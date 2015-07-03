using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITIL
{
    public partial class Report : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["itmetric"].ConnectionString);

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

        protected void Compare(object sender, EventArgs e)
        {
            info.Text = "";

            if (dropMetricArea.SelectedIndex == 0 || dropMetric.SelectedIndex == 0)
            {
                info.Text = "Choose an Area / Metric to Report";
            }
            else
            {
                string query = string.Format("select * from metric_target where metric_id = " + dropMetric.SelectedItem.Value + " order by id desc");
                string[] query1 = {"Jan","Fab","Mrc","Apr","May","Jun","Jul","Agu","Sep","Oct","Nov","Dec"};

                DataTable dt = GetData(query);
                if (dt.Rows.Count > 0)
                {
                    decimal[] x = new decimal[dt.Columns.Count];
                    string[] y = new string[query1.Length];
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        x[i] = Convert.ToInt32(dt.Rows[0][i]);
                    }
                    for (int i = 0; i < y.Length; i++)
                    {
                        y[i] = query1[i].ToString();
                    }
                    LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Name = "Target", Data = x });

                    string query2 = string.Format("select * from metric_actual where metric_id = " + dropMetric.SelectedItem.Value + " order by id desc");
                    DataTable dt2 = GetData(query2);

                    x = new decimal[dt2.Columns.Count];
                    for (int i = 0; i < dt2.Columns.Count; i++)
                    {
                        x[i] = Convert.ToInt32(dt2.Rows[0][i]);
                    }
                    LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Name = "Actual", Data = x });
                    LineChart1.CategoriesAxis = string.Join(",", y);

                    LineChart1.ChartTitle = string.Format("{0}", dropMetric.SelectedItem.Text);
                    LineChart1.Visible = true;
                }
                else
                {
                    info.Text = "No Data Found!";
                }

            }
        }

        private static DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["itmetric"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        sda.Fill(dt);
                    }
                }
                return dt;
            }
        }
    }
}