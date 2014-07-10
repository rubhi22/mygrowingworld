<%@ Page Title="" Language="C#" MasterPageFile="~/web229Project.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebProjectMasterPage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" 
        Text="Please Enter Information To Login: "></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label>
&nbsp;<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
    <br />
    <br />
</asp:Content>
