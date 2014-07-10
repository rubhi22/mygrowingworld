<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="300586867.aspx.cs" Inherits="_300586867._300586867" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
            width: 419px;
            height: 92px;
        }
        .style3
        {
            width: 685px;
        }
        .style4
        {
            width: 100%;
            height: 269px;
        }
        .style5
        {
            height: 190px;
            width: 236px;
        }
    </style>
    <link href="300586867.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style3">
                    <img alt="Centennial college" class="style2" src="images/banner.jpg" />&nbsp;
                    <asp:Label ID="lblTime" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="authors" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="4" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="author_id" HeaderText="Author Id" ReadOnly="True" 
                                SortExpression="author_id" />
                            <asp:TemplateField HeaderText="Last Name" SortExpression="author_last_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" 
                                        Text='<%# Bind("author_last_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lName" runat="server" Text='<%# Bind("author_last_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="First Name" SortExpression="author_first_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" 
                                        Text='<%# Bind("author_first_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="fName" runat="server" Text='<%# Bind("author_first_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="author_city" HeaderText="City" 
                                SortExpression="author_city" />
                            <asp:BoundField DataField="author_state" HeaderText="State" 
                                SortExpression="author_state" />
                            <asp:BoundField DataField="author_phone" HeaderText="Phone" 
                                SortExpression="author_phone" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="authors" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" 
                        SelectCommand="SELECT [author_id], [author_last_name], [author_first_name], [author_city], [author_state], [author_phone] FROM [lti_author]">
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="lbltitle" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="title" DataSourceID="Author_Books" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="author_id" HeaderText="Author Id" 
                                SortExpression="author_id" />
                            <asp:BoundField DataField="isbn" HeaderText="ISBN" SortExpression="isbn" />
                            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                            <asp:BoundField DataField="publish_date" HeaderText="Date Published" 
                                SortExpression="publish_date" />
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                            <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="115px" 
                                        ImageUrl='<%# "images/"+Eval("picture") %>' Width="115px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="Author_Books" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" 
                        SelectCommand="SELECT [isbn], [title], [publish_date], [price], [picture], [author_id] FROM [AuthorsAndBook] WHERE ([author_id] = @author_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="author_id" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <table cellpadding="5" cellspacing="8" class="style4">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label1" runat="server" Text="Detail view:"></asp:Label>
&nbsp;&nbsp;
                                <br />
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                    DataKeyNames="isbn" DataSourceID="DetailView" Height="50px" 
                                    style="text-align: left" Width="125px" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                    <Fields>
                                        <asp:BoundField DataField="isbn" HeaderText="ISBN" ReadOnly="True" 
                                            SortExpression="isbn" />
                                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                                        <asp:BoundField DataField="publish_date" HeaderText="Date Published" 
                                            SortExpression="publish_date" />
                                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                        <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Image ID="Image2" runat="server" 
                                                    ImageUrl='<%# "images/"+Eval("picture") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="True" />
                                    </Fields>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                </asp:DetailsView>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:SqlDataSource ID="DetailView" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" 
                        DeleteCommand="DELETE FROM [lti_book] WHERE [isbn] = @isbn" 
                        InsertCommand="INSERT INTO [lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (@isbn, @title, @publish_date, @price, @picture)" 
                        SelectCommand="SELECT [isbn], [title], [publish_date], [price], [picture] FROM [lti_book] WHERE ([title] = @title)" 
                        UpdateCommand="UPDATE [lti_book] SET [title] = @title, [publish_date] = @publish_date, [price] = @price, [picture] = @picture WHERE [isbn] = @isbn">
                        <DeleteParameters>
                            <asp:Parameter Name="isbn" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="isbn" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="publish_date" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Decimal" />
                            <asp:Parameter Name="picture" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="title" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="publish_date" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Decimal" />
                            <asp:Parameter Name="picture" Type="String" />
                            <asp:Parameter Name="isbn" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Rajbir Kaur - 300586867"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
