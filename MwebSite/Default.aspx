<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MwebSite._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder">
   
    <div class="Content">
    <div class="container" runat="server" style="width:100%; direction: ltr;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     
                       <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
                        <div class="col-md-10" runat="server">
                        <asp:Image ID="Image1" cssclass="img-fluid" runat="server" height="80em" width="100%"/>
                            </div>
                      </div>
                        
                 </ContentTemplate>
             </asp:UpdatePanel>
        </div>
         <br/>
         <div id="Div7" class="clr" runat="server"></div>
           <div id="Div8" class="fixedImage" runat="server"></div>

        <div class="container" runat="server">
           <div class="theCateg" runat="server">
                <div class="catg1 col-lg-4 col-md-3 col-sm-2" runat="server">
                    <asp:ImageButton ID="ImageButton1" CssClass="btn btn-default img-fluid"  runat="server" ImageUrl="~/Images/cg1.png" Width="100%" Height="100%" PostBackUrl="~/CategA.aspx" ToolTip="T-shirts" />
                </div>
               <div class="catg2 col-lg-10 col-md-8 col-sm-7" runat="server">
                   <asp:ImageButton ID="ImageButton2" CssClass="btn btn-default img-fluid"  runat="server" ImageUrl="~/Images/cg2.jpg" Width="100%" Height="100%" PostBackUrl="~/CategB.aspx" ToolTip="Shirts" />
                   </div>
           </div>
            </div>
         <div class="clr" runat="server"></div>

      
           <div class="fixedImage" runat="server"></div>

        <div class="clr"></div>
           <div id="Div1" class="container" runat="server">
           <div id="Div2" runat="server">
                <div id="Div3" class="catg1 col-lg-4 col-md-3 col-sm-2" runat="server">
                    <asp:ImageButton ID="ImageButton3" CssClass="btn btn-default"  runat="server" ImageUrl="~/Images/cg3.jpg" Width="100%" Height="100%" PostBackUrl="~/CategC.aspx" ToolTip="Trousers" />
                </div>
               <div id="Div4" class="catg2 col-lg-10 col-md-8 col-sm-7" runat="server">
                   <asp:ImageButton ID="ImageButton4" CssClass="btn btn-default"  runat="server" ImageUrl="~/Images/cg4.jpg" Width="100%" Height="100%" PostBackUrl="~/CategD.aspx" ToolTip="Shorts"  />
                   </div>
           </div>
            </div>

          <div id="Div5" class="clr" runat="server"></div>
           <div id="Div6" class="fixedImage" runat="server"></div>

    </div>
</asp:Content>
