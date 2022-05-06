using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OyunFor
{
    public partial class uyekayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Temizle()
        {
            TextBox_kAdi.Text = " ";
            TextBox_sifre.Text = " ";
            TextBox_telefon.Text = " ";
            TextBox_eposta.Text = " ";
        }


        protected void buton_kayit(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=.;Initial Catalog=OyunOtomasyonuVeriTabani;Integrated Security=True");
            baglan.Open();

            SqlCommand spUyeEkle = new SqlCommand();
            spUyeEkle.Connection = baglan;
            spUyeEkle.CommandType = CommandType.StoredProcedure;
            spUyeEkle.CommandText = "spuyeekleme";            
            spUyeEkle.Parameters.AddWithValue("@Kadi", TextBox_kAdi.Text);
            spUyeEkle.Parameters.AddWithValue("@sifre", TextBox_sifre.Text);
            spUyeEkle.Parameters.AddWithValue("@tel", TextBox_telefon.Text);
            spUyeEkle.Parameters.AddWithValue("@eposta", TextBox_eposta.Text);

            spUyeEkle.ExecuteNonQuery();
            baglan.Close();
            Temizle();
            
           


        }
    }
}