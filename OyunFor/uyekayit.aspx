<%@ Page Title="" Language="C#" MasterPageFile="~/menusuz.Master" AutoEventWireup="true" CodeBehind="uyekayit.aspx.cs" Inherits="OyunFor.uyekayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 181px;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="uyeKayit">
    <table  style="color:white; font-family:Consolas; font-weight:600; font-size:16px;  height:250px; border:2px solid black; border-bottom-left-radius:15px;
border-bottom-right-radius:15px; border-top-right-radius:15px; border-top-left-radius:15px; position:relative;  height:300px; width:370px;">
        <tr> 
            <td style="color:black; width:150px;">&nbsp;&nbsp;Kulllanıcı Adı:</td> <td>
                <asp:TextBox ID="TextBox_kAdi" runat="server" Width="150px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color:black;" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre :</td> <td>
                <asp:TextBox ID="TextBox_sifre" runat="server"  Width="150px" TextMode="Password" CssClass="auto-style3"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color:black;" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-posta :</td>
            <td><asp:TextBox ID="TextBox_eposta" runat="server"  Width="150px"></asp:TextBox></td>
        </tr>
         <tr>
            <td style="color:black;" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telefon :</td> 
             <td><asp:TextBox ID="TextBox_telefon" runat="server"  Width="150px"></asp:TextBox></td>
        </tr>
         <tr>
   
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button Text="Kayıt Ol"  style="width:150px; height:35px; outline:none; background-color:#232630; border-radius:20px; font-family:Consolas; font-size:16px; color:white; " runat="server" OnClick="buton_kayit" CssClass="auto-style1" Height="35px"/></td>
        </tr>

    </table>
        </div>

</asp:Content>
