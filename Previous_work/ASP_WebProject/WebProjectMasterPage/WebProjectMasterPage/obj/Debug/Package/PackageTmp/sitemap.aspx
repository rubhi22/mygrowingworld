<%@ Page Title="" Language="C#" MasterPageFile="~/web229Project.Master" AutoEventWireup="true" CodeBehind="sitemap.aspx.cs" Inherits="WebProjectMasterPage.sitemap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Home</p>
    <ul>
        <li>
            <p style="margin-left: 40px">
                <a href="MensJewel.aspx">Men&#39;s Jewellery</a></p>
            <ul>
                <li>
                    <p style="margin-left: 40px">
                        Men&#39;s Rings</p>
                </li>
                <li>
                    <p style="margin-left: 40px">
                        Men&#39;s Watches</p>
                </li>
                <li>
                    <p style="margin-left: 40px">
                        Men&#39;s Chains</p>
                </li>
            </ul>
        </li>
        <li>
            <p style="margin-left: 40px">
                <a href="Womensjewel.aspx">Women&#39;s Jewellery</a></p>
            <ul>
                <li>
                    <p style="margin-left: 40px">
                        Women&#39;s Rings</p>
                </li>
                <li>
                    <p style="margin-left: 40px">
                        Women&#39;s Chains</p>
                </li>
                <li>
                    <p style="margin-left: 40px">
                        Women&#39;s Necklaces</p>
                </li>
            </ul>
        </li>
    </ul>
    <ul style="margin-left: 80px">
        <li><a href="feedback.aspx">Feedback</a></li>
        <li>Register</li>
        <li><a href="ContactUs.aspx">Contact Us</a></li>
        <li>SiteMap</li>
        <li>Login</li>
    </ul>
    <p>
        &nbsp;</p>
    <p style="margin-left: 40px">
    </p>
</asp:Content>
