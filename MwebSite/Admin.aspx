<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MwebSite.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   
     <div id="Div1" class="container" style="width:70%; margin:auto" runat="server">
        <div id="catList" runat="server">
            <asp:Button CssClass="btn btn-primary"  ID='ImageButton1' runat='server' Text="Admin or Remove"  Width='158px' Height='100px' ToolTip='T-Shirt Category' PostBackUrl='~/Admin.aspx' CausesValidation="False"/>
            <asp:Button CssClass="btn btn-default" ID='ImageButton2' runat='server' Text="Add new Product" Width='163px' Height='100px' ToolTip='Shirt Category' PostBackUrl="~/AddProductByAdmin.aspx" CausesValidation="False"/>
            <asp:Button CssClass="btn btn-default" ID='ImageButton3' runat='server' Text="Delete Product"  Width='180px' Height='100px' ToolTip='Trousers Category' PostBackUrl="~/DeleteProduct.aspx" CausesValidation="False"/>
           </div>
         <br /><br /><br /><br /><br /><br />
          <input id="em" class="form-control" runat="server" type="email" name="user" placeholder="E-mail user need to be Admin" autocomplete="off">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorE" runat="server" ErrorMessage="E-mail is required" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000" ControlToValidate="em"></asp:RequiredFieldValidator>
                <asp:Button ID="Button1" cssclass="btn btn-primary btn-block" runat="server" text="Add" OnClick="Button1_Click"  />
               <asp:Button ID="Remv" cssclass="btn btn-primary btn-block" runat="server" text="Remove" OnClick="Remv_Click"  />
                  <br /> <asp:Label ID="Lab" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#009933" Text=""></asp:Label>

     </div>

</asp:Content>
