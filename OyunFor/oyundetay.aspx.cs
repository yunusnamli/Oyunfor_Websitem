using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OyunFor
{
    public partial class oyundetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] == null)
            {
                Response.Redirect("uyegiris.aspx");
            }

            string secilenid = Request.QueryString["id"];
            SqlConnection baglanti = new SqlConnection("Data Source=.;Initial Catalog=OyunOtomasyonuVeriTabani;Integrated Security=True");
            baglanti.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("select resimYolu from tblResim where vitrin='False' and urunNoFk=" + secilenid, baglanti);
            DataTable dtresim = new DataTable();
            adapt.Fill(dtresim);
            repeater_Resim.DataSource = dtresim;
            repeater_Resim.DataBind();

            /* Ürün Adı İçin Veri Tabanı İşlemleri*/
            SqlDataAdapter adaptoryazi = new SqlDataAdapter("select urunAdi from tblUrun where urunNo=" + secilenid, baglanti);
            DataTable dtyazi = new DataTable();
            adaptoryazi.Fill(dtyazi);
            repeater_Oyun_Adi.DataSource = dtyazi;
            repeater_Oyun_Adi.DataBind();

            /*Ürün Açıklama için Veri Tabanı İşlemleri*/
            SqlDataAdapter adaptoraciklama = new SqlDataAdapter("select urunAciklama from tblUrun where urunNo=" + secilenid, baglanti);
            DataTable dtaciklama = new DataTable();
            adaptoraciklama.Fill(dtaciklama);
            repeater_aciklama.DataSource = dtaciklama;
            repeater_aciklama.DataBind();

            /*Ürün Detay içiv Veri Tabanı İşlemleri */
            SqlDataAdapter adaptordetay = new SqlDataAdapter("SELECT TOP 1 dbo.tblResim.urunNoFk, dbo.tblUrun.urunNo, dbo.tblUrun.urunFiyati, dbo.tblUrunDetay.urunDetayNo, dbo.tblUrunDetay.urunCikisTarihi, dbo.tblUrunDetay.sistemOzelleri, dbo.tblUrunDetay.urunMotoru,  dbo.tblUrunDetay.urunDeyaAciklama, dbo.tblUrunPlatform.urunPlatformAdi FROM dbo.tblUrun INNER JOIN  dbo.tblUrunDetay ON dbo.tblUrun.urunNo = dbo.tblUrunDetay.urunNoFK INNER JOIN  dbo.tblUrunPlatform ON dbo.tblUrun.urunNo = dbo.tblUrunPlatform.urunNoFK INNER JOIN dbo.tblResim ON dbo.tblUrun.urunNo = dbo.tblResim.urunNoFk where dbo.tblResim.vitrin='False' and dbo.tblResim.urunNoFk="+secilenid,baglanti);
            DataTable dtdetay = new DataTable();
            adaptordetay.Fill(dtdetay);
            repeater_detay.DataSource = dtdetay;
            repeater_detay.DataBind();            


        }
    }
}