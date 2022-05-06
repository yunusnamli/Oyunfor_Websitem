using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace OyunFor
{
    public partial class uyegiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buton_giris(object sender, EventArgs e)
        {
            string kadi = TextBox_kAdi.Text.Trim();
            string sifre = TextBox_sifre.Text.Trim();

            if (kadi == "" || sifre == "")
            {
                Response.Write("<script>alert('Kullanıcı Adı Ya da Sifre Yanlıs');</script>");
            }

            else
            {

                SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=OyunOtomasyonuVeriTabani;Integrated Security=True");
                baglanti.Open();
                string srgLoginKontrol = "select * from Tbl_Uyeler where Kadi='" + kadi + "' and sifre='" + sifre + "'";
                SqlDataAdapter dapt = new SqlDataAdapter(srgLoginKontrol, baglanti);
                DataTable dtUye = new DataTable();
                dapt.Fill(dtUye);
                if (dtUye.Rows.Count > 0)
                {
                    Session["uye"] = kadi;
                    Response.Redirect("OyunFor.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Kullanıcı Adı Veya Sifre Hatalı ! Tekrar Deneyiniz.')</script>");
                    TextBox_kAdi.Text = "";
                    TextBox_sifre.Text = "";
                }

            }
        }
    }
}