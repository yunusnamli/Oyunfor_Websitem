<%@ Page Title="" Language="C#" MasterPageFile="~/menusuz.Master" AutoEventWireup="true" CodeBehind="oyundetay.aspx.cs" Inherits="OyunFor.oyundetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <div class="donus"><a href="OyunFor.aspx">Anasayfa</a></div>
    <div class="Oyun_Detay"> 
         <div class="hersey">
    <div class="oyun_Resim">    
        <asp:Repeater ID="repeater_Resim" runat="server">
            <ItemTemplate>
                <div class="oyun_Resim_ic">
                    <img src="<%#Eval("resimYolu")%>" alt="Resim Yüklenemedi" />
                </div>                
            </ItemTemplate>
        </asp:Repeater>

    </div>
             <div class="isim_aciklama">
   
         <div class="Oyun_Adi">
            <asp:Repeater ID="repeater_Oyun_Adi" runat="server"> 
       <ItemTemplate>
           <div class="Oyun_Adi_ic"><h3 style="font-size:18px; color:red"><%#Eval("urunAdi")%></h3></div>
       </ItemTemplate>
   </asp:Repeater>
        </div>
       
       <div class="aciklama">
   <asp:Repeater ID="repeater_aciklama" runat="server"> 
       <ItemTemplate>
           <div class="aciklama_ic"><h3 style="font-size:18px; color:black; font-weight:500;"><%#Eval("urunAciklama")%></h3></div>
       </ItemTemplate>
   </asp:Repeater>
       </div>
     
       </div>         
         </div>
 
           <div class="tablom">
               <asp:Repeater ID="repeater_detay" runat="server">
              <ItemTemplate>
                   <table class="table" >
                    <tr >
                        <td>Oyun Çıkış Tarihi:</td>
                        <td><%#Eval("urunCikisTarihi")%></td>
                    </tr>
                  
                    <tr>
                        <td>Sistem Özellikleri:</td>
                        <td><%#Eval("sistemOzelleri")%></td>
                    </tr>
                    
                   <tr>
                        <td>Oyun Motoru:</td>
                        <td><%#Eval("urunMotoru")%></td>
                    </tr>
                     
                   <tr>
                        <td >Oyun Platrformu:</td>
                        <td><%#Eval("urunPlatformAdi")%></td>
                    </tr>

                   <tr>
                        <td>Fiyat:</td>
                        <td><%#Eval("urunFiyati")%></td>
                    </tr>

               </table>
                 
                   </ItemTemplate>
                  
                    </asp:Repeater>                
                </div>
           </div>
            
    

</asp:Content>
