<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterCon.aspx.cs" Inherits="MwebSite.RegisterCon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

        <div id="Div1" class="clr" runat="server"></div>
    <div id="Div2" class="container" runat="server" style="width:68%; margin:auto">
                    <input id="Text1" class="form-control" runat="server" type="text" placeholder="username" autocomplete="off">
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="User Name is required" ControlToValidate="Text1" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 <input id="Text2" class="form-control" runat="server" type="text" placeholder="fullname" autocomplete="off">
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" ErrorMessage="Full Name is required" ControlToValidate="Text2" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  <input id="Text3" class="form-control" runat="server" type="email" placeholder="email" autocomplete="off">
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ErrorMessage="Email is required" ControlToValidate="Text3" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <input id="Password1" class="form-control" runat="server" type="password" placeholder="password"  autocomplete='off'>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorpas" runat="server" ErrorMessage="password is required" ControlToValidate="Password1" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         <input id="Password2" class="form-control" runat="server" type="password" placeholder="type password again"  autocomplete='off'>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" ErrorMessage="type password again  required" ControlToValidate="Password2" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                               <br/> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" Font-Bold="True" Font-Italic="True" Font-Size="15px" ForeColor="#CC0000" ControlToCompare="Password2" ControlToValidate="Password1" Operator="Equal" Type="String"></asp:CompareValidator>
        <asp:Button ID="Button1" cssclass="btn btn-primary btn-block" runat="server" text="Register"    OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#009933" Text=""></asp:Label>
                    <br />
        </div>
</asp:Content>
