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
                    <label>Room ID</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="input-text" placeholder="Enter Room ID"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Room Number</label>
                    <asp:TextBox ID="txtNet" runat="server" CssClass="input-text" placeholder="Enter Room Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>
                    Room Type</label>
                    <asp:TextBox ID="txtFlavour" runat="server" CssClass="input-text" placeholder="Enter Room Type"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Status</label>
                    <asp:TextBox ID="txtContains" runat="server" CssClass="input-text" placeholder="Avialable/Unavailable"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Bed Type</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="input-text" placeholder="Enter Bed Type"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Cleaning status</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-text" placeholder="Cleaned/Not Cleaned"></asp:TextBox>
                </div>

                 <div class="form-group">
                     <label>
                     Features</label>
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="input-text" 
                         placeholder="Room Features" TextMode="MultiLine"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Rate </label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="input-text" placeholder="Rate Per Night in Rs."></asp:TextBox>
                </div>

                 <div class="form-group">
                    &nbsp;<label>Category</label>
                     <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-dropdown" 
                         AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Categoryname" 
                         DataValueField="Categoryname">
                         
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                         SelectCommand="SELECT [Categoryname] FROM [BB_Category]">
                     </asp:SqlDataSource>
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


