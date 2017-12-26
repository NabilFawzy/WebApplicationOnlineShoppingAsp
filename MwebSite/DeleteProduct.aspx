<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="MwebSite.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

       <div id="Div1" class="clr" runat="server"></div>

        <div id="Div3" class="container" style="width:70%; margin:auto" runat="server">    
        <div id="catList" runat="server">
            <asp:Button CssClass="btn btn-default"  ID='ImageButton1' runat='server' Text="Admin or Remove"  Width='158px' Height='100px' ToolTip='T-Shirt Category' PostBackUrl='~/Admin.aspx' CausesValidation="False"/>
            <asp:Button CssClass="btn btn-default" ID='ImageButton2' runat='server' Text="Add new Product" Width='163px' Height='100px' ToolTip='Shirt Category' PostBackUrl="~/AddProductByAdmin.aspx" CausesValidation="False"/>
            <asp:Button CssClass="btn btn-primary" ID='ImageButton3' runat='server' Text="Delete Product"  Width='180px' Height='100px' ToolTip='Trousers Category' PostBackUrl="~/DeleteProduct.aspx" CausesValidation="False"/>
           </div>
         <br /><br /><br /><br /><br /><br />
            
             <input id="Tex1" class="form-control" runat="server" type="text" placeholder="Product pic name" autocomplete="off">
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDes" runat="server" ErrorMessage="pic's name is required" ControlToValidate="Tex1" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 &nbsp;<asp:DropDownList ID="DropDownList1" cssclass="form-control" runat="server" >
                    <asp:ListItem>Shirts</asp:ListItem>
                    <asp:ListItem>T-Shirts</asp:ListItem>
                    <asp:ListItem>Trousers</asp:ListItem>
                    <asp:ListItem>Shorts</asp:ListItem>
                    </asp:DropDownList><br /><br /><br />
           <input id="pricc" class="form-control" runat="server" type="text" placeholder="Product price "  autocomplete="off">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpric" runat="server" ErrorMessage="price is required" ControlToValidate="pricc" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000" ToolTip="Price Of Product"></asp:RequiredFieldValidator>
                     <br /><asp:CompareValidator ID="CompareValidatorr" runat="server" ErrorMessage="type double type price please" ControlToValidate="pricc" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>

        <asp:Button ID="Button1" cssclass="btn btn-primary btn-block" runat="server" text="Delete" OnClick="Button1_Click"    />
                    <asp:Label ID="Labe" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#009933" Text=""></asp:Label>
                    <br />
        </div>

</asp:Content>
