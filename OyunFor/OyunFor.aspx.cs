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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*repeater ve ıtemtamplateden sonra yazılır */
            SqlConnection baglanti = new SqlConnection("Data Source=.;Initial Catalog=OyunOtomasyonuVeriTabani;Integrated Security=True");
            baglanti.Open();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT dbo.tblUrun.urunNo, dbo.tblResim.urunNoFk, dbo.tblUrun.urunAdi, dbo.tblUrun.urunFiyati, dbo.tblResim.resimYolu, dbo.tblResim.vitrin FROM dbo.tblUrun INNER JOIN dbo.tblResim ON dbo.tblUrun.urunNo = dbo.tblResim.urunNoFk where tblResim.vitrin=1",baglanti);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            Repeater_oyun.DataSource = dt;
            Repeater_oyun.DataBind();
            baglanti.Close();

        }
    }
}