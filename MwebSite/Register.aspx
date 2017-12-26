<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MwebSite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="k" class="clr" runat="server"></div>
          <div id="Div1" class="container" runat="server" style="width:50%;margin:auto">
                    <input id="Text1" class="form-control" runat="server" type="email" name="user" placeholder="E-mail" autocomplete="off">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-mail is required" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000" ControlToValidate="Text1"></asp:RequiredFieldValidator>
                <input id="Password1" class="form-control" runat="server" type="password" name="pass" placeholder="password"  autocomplete='off'>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" Font-Bold="True" Font-Size="15px" ForeColor="#CC0000" ControlToValidate="Password1"></asp:RequiredFieldValidator>
                <asp:Button ID="Button2" cssclass="btn btn-primary btn-block" runat="server" text="Log In" OnClick="Button2_Click"   />
                   <asp:Button ID="Button1" cssclass="btn btn-primary btn-block" runat="server" text="Register"  PostBackUrl="~/RegisterCon.aspx" CausesValidation="False" OnClick="Button1_Click"  />
              <br /> <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#009933" Text=""></asp:Label>

        </div>
    
</asp:Content>
