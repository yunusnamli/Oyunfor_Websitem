<%@ Page Title="" Language="C#" MasterPageFile="~/menusuz.Master" AutoEventWireup="true" CodeBehind="uyegiris.aspx.cs" Inherits="OyunFor.uyegiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="uyeGiris" >
    <table style=" border-color: inherit; font-weight:bold;  font-family:Consolas; font-size:18px; color:white;  border:2px solid black; border-bottom-left-radius:10px;border-bottom-right-radius:10px; border-top-left-radius:10px;border-top-right-radius:10px; width:400px; height:150px;">
        <tr>
            <td style="color:black;" class="auto-style1">&nbsp;&nbsp;Kulllanıcı Adı:</td> 
            <td><asp:TextBox ID="TextBox_kAdi" runat="server" Width="150px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color:black;" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre :</td> 
            <td class="auto-style3"><asp:TextBox ID="TextBox_sifre" runat="server"  Width="150px" TextMode="Password" style="margin-left: 0px" ></asp:TextBox></td>
        </tr>
         <tr>
                     
          <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button Text="Giriş Yap"  style="width:150px; height:35px; outline:none; background-color:#232630; border-radius:20px; font-family:Consolas; font-size:16px; color:white; left: 181px;" runat="server" OnClick="buton_giris" /></td>
        </tr>

    </table>
        </div>

</asp:Content>
