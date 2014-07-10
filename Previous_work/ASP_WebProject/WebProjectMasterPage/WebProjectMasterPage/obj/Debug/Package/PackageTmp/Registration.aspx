<%@ Page Title="" Language="C#" MasterPageFile="~/web229Project.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebProjectMasterPage.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <script language="javascript" type="text/javascript">
// <![CDATA[

      

// ]]>
    </script>
    <style type="text/css">
        .style39
        {
            width: 264px;
        }
        .style40
        {
        }
        .style43
        {
            height: 54px;
        }
        .style44
        {
            width: 264px;
            height: 54px;
            text-align: left;
        }
        .style45
        {
            width: 264px;
            height: 65px;
            text-align: left;
        }
        .style46
        {
            height: 65px;
        }
        .style47
        {
            width: 264px;
            height: 61px;
            text-align: left;
        }
        .style48
        {
            height: 61px;
        }
        .style49
        {
            width: 264px;
            height: 63px;
            text-align: left;
        }
        .style50
        {
            height: 63px;
        }
        .style51
        {
            width: 264px;
            height: 83px;
            text-align: left;
        }
        .style52
        {
            height: 83px;
        }
        .style53
        {
            width: 264px;
            height: 66px;
            text-align: left;
        }
        .style54
        {
            height: 66px;
        }
        .style55
        {
            width: 264px;
            height: 40px;
            text-align: left;
        }
        .style56
        {
            width: 264px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        &nbsp;&nbsp;&nbsp;&nbsp;
        Please Register Below:</h2>
    <table cellpadding="3" cellspacing="3" class="style1" style="height: 399px">
        <tr>
            <td class="style44">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp;</td>
            <td class="style43">
        <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" 
            ControlToValidate="txtname" Display="Dynamic" 
            ErrorMessage="Name is required. Please enter you name." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style55">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:&nbsp;</td>
            <td class="style43">
        <asp:TextBox ID="txtAddress" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_address" runat="server" 
            ControlToValidate="txtAddress" Display="Dynamic" 
            ErrorMessage="Please enter an address." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style56">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone:&nbsp;</td>
            <td>
        <asp:TextBox ID="txtTelephone" runat="server" CssClass="style40" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_phone" runat="server" 
            ControlToValidate="txtTelephone" Display="Dynamic" 
            ErrorMessage="Please enter you phone number.  " ForeColor="#66CCFF"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtTelephone" Display="Dynamic" 
            ErrorMessage="Please enter a correct phone number in the format :(999)999-9999" 
            ForeColor="#66CCFF" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style45">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;</td>
            <td class="style46">
        <asp:TextBox ID="Txt_email" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" 
            ControlToValidate="Txt_email" Display="Dynamic" 
            ErrorMessage="Please enter you email address." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="Txt_email" Display="Dynamic" 
            ErrorMessage="Email is not valid." ForeColor="#66CCFF" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style47">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age:&nbsp;&nbsp;</td>
            <td class="style48">
        <asp:TextBox ID="txtAge" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_age" runat="server" 
            ControlToValidate="txtAge" Display="Dynamic" 
            ErrorMessage="Please enter your age" ForeColor="#66CCFF"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtAge" ErrorMessage="Age is atleast 18." MaximumValue="125" 
            MinimumValue="18" Type="Integer" ForeColor="#66CCFF"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style49">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:</td>
            <td class="style50">
                &nbsp;&nbsp;Male<input 
            id="Radio_male" name="Radio_gender" type="radio" checked="checked" value="1" />&nbsp; 
        Female
        <input id="radio_female" name="Radio_gender" type="radio" value="2" /></td>
        </tr>
        <tr>
            <td class="style51">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;</td>
            <td class="style52">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_password" runat="server" 
            ControlToValidate="txtPassword" Display="Dynamic" 
            ErrorMessage="Please enter your password." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtPassword" Display="Dynamic" 
            ErrorMessage="Invaid password. Your password must contain at least 1 number, at least 1 lower case letter, and at least 1 upper case letter." 
            ForeColor="#66CCFF" 
            ValidationExpression="^\w*(?=\w*\d)(?=\w*[a-z])(?=\w*[A-Z])\w*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style53">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm&nbsp; Password:&nbsp;</td>
            <td class="style54">
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_confirm" runat="server" 
            ControlToValidate="txtConfirm" Display="Dynamic" 
            ErrorMessage="Please confrim password." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPassword" ControlToValidate="txtConfirm" Display="Dynamic" 
            ErrorMessage="Passwords do not match." ForeColor="#66CCFF"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style39">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" onclick="Button1_Click" Text="Register" 
            BackColor="#863940" ForeColor="White" Width="82px" />
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Imp_startover" type="reset" value="Reset" 
            style="background-color: #863940; color: #FFFFFF; width: 67px;" /></td>
        </tr>
    </table>
    <p>
        <span class="style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
</asp:Content>
