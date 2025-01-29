<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageproduct.aspx.cs" Inherits="Content_manageproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="productcontainer">
            <!-- Header -->
            <div class="productheader">
                <h2>Add Product</h2>
            </div>

            <!-- Product Form -->
            <div class="product-form">
                <div class="form-group">
                    <label>Image</label>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="file-upload" />
                </div>

                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="input-text" placeholder="Enter Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Brand</label>
                    <asp:TextBox ID="txtNet" runat="server" CssClass="input-text" placeholder="Enter Brand"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-text" placeholder="Enter Price"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Year</label>
                    <asp:TextBox ID="txtFlavour" runat="server" CssClass="input-text" placeholder="Enter Year"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>FuelType</label>
                    <asp:TextBox ID="txtContains" runat="server" CssClass="input-text" placeholder="Petrol/Diesel"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Transmission</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-text" placeholder="Enter Transmission"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Mileage</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input-text" placeholder="Enter Mileage"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Status</label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input-text" placeholder="Enter Status"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-dropdown">
                        <asp:ListItem Text="-- Select Category --" Value="" />
                        <asp:ListItem Text="Cakes" Value="Cakes" />
                        <asp:ListItem Text="Pastries" Value="Pastries" />
                        <asp:ListItem Text="Cookies" Value="Cookies" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add" />
                </div>
            </div>

            <!-- Product Table -->
            <div class="table-container">
                <asp:GridView ID="gvProducts" runat="server" CssClass="product-table" 
                    AutoGenerateColumns="False" DataKeyNames="Room_ID" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Room_ID" HeaderText="Room_ID" ReadOnly="True" 
                            SortExpression="Room_ID" />
                        <asp:BoundField DataField="Rno" HeaderText="Rno" SortExpression="Rno" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                            SortExpression="Capacity" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                        <asp:BoundField DataField="Bedtype" HeaderText="Bedtype" 
                            SortExpression="Bedtype" />
                        <asp:BoundField DataField="Clean_Status" HeaderText="Clean_Status" 
                            SortExpression="Clean_Status" />
                        <asp:BoundField DataField="Features" HeaderText="Features" 
                            SortExpression="Features" />
                        <asp:BoundField DataField="Ratepernight" HeaderText="Ratepernight" 
                            SortExpression="Ratepernight" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [BB_Rooms]"></asp:SqlDataSource>
            </div>
        </div>
</asp:Content>


