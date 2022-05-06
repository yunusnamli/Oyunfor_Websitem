<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OyunFor.aspx.cs" Inherits="OyunFor.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="contentRight">
	
	<div class="guncel"><li style="color: white; font-size:20px; text-align: center; list-style: none;">Güncel Oyunlar</li></div>
        <asp:Repeater ID="Repeater_oyun" runat="server">
       <ItemTemplate>
             <div class="oyunlar">
                 <a href="oyundetay.aspx?id=<%#Eval("urunNo")%>">
                 <div class="urun_resim"> <img  src="<%#Eval("resimYolu")%>" alt="Resim Yüklenmedi" /></div>
                     <div class="urun_yazi">
                 <h3 style="font-size:14px; font-weight:bold; "><%#Eval("urunAdi")%></h3>                  
                   <div class="fiyat"><h3 style ="font-size:15px; font-weight:bold; "><%#Eval("urunFiyati")%></h3></div>
                          </div>
                  
                 </a>
             </div>
        </ItemTemplate>
        </asp:Repeater>

   </div>
</asp:Content>
