<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategB.aspx.cs" Inherits="MwebSite.CategB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

       <div id="Div1" class="container" style="width:70%;margin:auto" runat="server">
        <div id="catList" runat="server">
          <asp:ImageButton CssClass="btn btn-default"  ID='ImageButton1' runat='server' ImageUrl='~/Images/w1.jpg' Width='100px' Height='100px' ToolTip='T-Shirt Category' PostBackUrl='~/CategA.aspx'/>
            <asp:ImageButton CssClass="btn btn-primary" ID='ImageButton2' runat='server' ImageUrl='~/Images/w2.jpg' Width='100px' Height='100px' ToolTip='Shirt Category' PostBackUrl='~/CategB.aspx'/>
            <asp:ImageButton CssClass="btn btn-default" ID='ImageButton3' runat='server' ImageUrl='~/Images/w3.jpg' Width='100px' Height='100px' ToolTip='Trousers Category' PostBackUrl='~/CategC.aspx'/>
            <asp:ImageButton  CssClass="btn btn-default" ID='ImageButton4' runat='server' ImageUrl='~/Images/w4.jpg' Width='100px' Height='100px' ToolTip='Shorts Category' PostBackUrl='~/CategD.aspx'/></div>
        <h1 style="text-align:center;color:red;margin-bottom:50px">Shirts</h1>
         <div id="t" class="container" style="width:90%; font-size:10px;" runat="server">
             
          </div>
    </div><br />
</asp:Content>
