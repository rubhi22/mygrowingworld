<%@ Page Title="" Language="C#" MasterPageFile="~/web229Project.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebProjectMasterPage.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select Department: "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="department" DataTextField="Name" DataValueField="DepartmentID">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Select Category: "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="category" DataTextField="Name" DataValueField="CategoryID">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Products: "></asp:Label>
&nbsp;<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="product" 
        PageSize="4" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Thumbnail" SortExpression="Thumbnail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Thumbnail") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# "Productimages/"+Eval("Thumbnail") %>' Width="64px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Product Detail: "></asp:Label>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ProductID" DataSourceID="detailProduct" Height="50px" 
        Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Thumbnail" SortExpression="Thumbnail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Thumbnail") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Thumbnail") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" 
                        ImageUrl='<%# "Productimages/"+Eval("Thumbnail") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image3" runat="server" 
                        ImageUrl='<%# "Productimages/"+Eval("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="detailProduct" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jewellerDatabase13-12-2010 %>" 
        DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" 
        InsertCommand="INSERT INTO [Product] ([Name], [Description], [Price], [Thumbnail], [Image]) VALUES (@Name, @Description, @Price, @Thumbnail, @Image)" 
        SelectCommand="SELECT [ProductID], [Name], [Description], [Price], [Thumbnail], [Image] FROM [Product] WHERE ([ProductID] = @ProductID)" 
        UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [Thumbnail] = @Thumbnail, [Image] = @Image WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="product" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jewellerDatabase13-12-2010 %>" 
        SelectCommand="SELECT [ProductID], [Name], [Description], [Price], [Thumbnail], [CategoryID] FROM [ProdInCat] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="CategoryID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="category" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jewellerDatabase13-12-2010 %>" 
        SelectCommand="SELECT [CategoryID], [DepartmentID], [Name] FROM [Category] WHERE ([DepartmentID] = @DepartmentID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="DepartmentID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="department" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jewellerDatabase13-12-2010 %>" 
        SelectCommand="SELECT [DepartmentID], [Name] FROM [Department]">
    </asp:SqlDataSource>
</asp:Content>
