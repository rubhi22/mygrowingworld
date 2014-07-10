<%@ Page Title="" Language="C#" MasterPageFile="~/web229Project.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebProjectMasterPage.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .style39
        {
            font-family: "Monotype Corsiva";
            font-size: xx-large;
        }
        #TextArea1
        {
            height: 104px;
            width: 312px;
        }
        .style40
        {
            width: 1132px;
        }
        .style41
        {
            width: 1129px;
        }
        .style42
        {
            width: 1126px;
        }
        .style43
        {
            width: 1123px;
        }
        .style44
        {
            width: 1117px;
        }
        .style45
        {
            width: 1110px;
        }
        .style46
        {
            width: 1105px;
        }
        .style47
        {
            width: 150px;
            height: 120px;
        }
        .style48
        {
            width: 150px;
            height: 50px;
        }
        .style49
        {
            height: 50px;
        }
        .style50
        {
            width: 150px;
            height: 51px;
        }
        .style51
        {
            height: 51px;
        }
        .style52
        {
            width: 150px;
            height: 49px;
        }
        .style53
        {
            height: 49px;
        }
        .style54
        {
            height: 120px;
        }
        #txtarea
        {
            height: 108px;
            width: 309px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="style43"><span class="style45">
    <br />
    <span class="style39">&nbsp; Thank You for visiting&nbsp; Ankanir 
    Jewellers</span><br />
    </span>
    <br />
    </span><span class="style40"><span class="style43"><span class="style46">&nbsp;<br />
&nbsp;&nbsp;&nbsp; Please 
    give your feedback in the block below</span><span class="style41">:</span></span><span class="style41"><span class="style42"><hr />
    </span>
    <span class="style42">
    <hr />
    </span>
    <table class="style1" style="margin-left:20px;">
        <tr>
            <td class="style52">
                <span class="style41"><span class="style42"><span class="style44">
                First Name :</span></span></span></td>
            <td class="style53">
                <span class="style41"><span class="style42">
    <span class="style40">
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    </span>
    <asp:RequiredFieldValidator ID="Required_fname" runat="server" 
        ControlToValidate="txtfname" ErrorMessage="Please enter your first name" 
        ForeColor="#66CCFF"></asp:RequiredFieldValidator>
                </span>
    </span>
            </td>
        </tr>
        <tr>
            <td class="style50">
                <span class="style41"><span class="style42">
    <span class="style44">Last Name :</span></span></span></td>
            <td class="style51">
                <span class="style41"><span class="style42">
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator_lname" runat="server" 
        ControlToValidate="txtLname" Display="Dynamic" 
        ErrorMessage="Please enter your Last name" ForeColor="#66CCFF"></asp:RequiredFieldValidator>
                </span>
    </span>
            </td>
        </tr>
        <tr>
            <td class="style48">
                <span class="style41"><span class="style42">
    <span class="style44">Email Address :</span></span></span></td>
            <td class="style49">
                <span class="style41"><span class="style42">
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </span>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
        ControlToValidate="txtEmail" Display="Dynamic" 
        ErrorMessage="Please Enter Your email address." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtEmail" ErrorMessage="Email is not valid." 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="#66CCFF"></asp:RegularExpressionValidator>
    </span>
            </td>
        </tr>
        <tr>
            <td class="style47">
                <span class="style41"><span class="style42">
    <span class="style44">
                Comment :</span></span></span></td>
            <td class="style54">
    <textarea id="txtarea" name="S1"></textarea></td>
        </tr>
    </table>
    </span></span>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmitcomments" runat="server" BackColor="#863940" 
        ForeColor="White" onclick="btnSubmitcomments_Click" 
        Text="Submit Feedback" />
    <br />
    <br />
    <br />
</asp:Content>
