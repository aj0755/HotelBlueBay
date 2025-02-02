<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageRooms.aspx.cs" Inherits="Admin_ManageRooms" %>

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
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input-text" placeholder="Rate Per Night in Rs."></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add" 
                        onclick="btnAdd_Click" />
                    <br />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>

            <!-- Product Table -->
   <div class="table-container">
        <asp:GridView ID="gvProducts" runat="server" CssClass="product-table" AutoGenerateColumns="False" DataKeyNames="Room_ID" DataSourceID="SqlDataSource1">
            <Columns>
                
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="Delete" CssClass="delete-btn"  OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this room?');">
                            <i class="fa fa-trash"></i>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Room_ID" HeaderText="Room_ID" 
                    SortExpression="Room_ID" ReadOnly="True" />
                <asp:BoundField DataField="Rno" HeaderText="Rno" SortExpression="Rno" />
            <asp:TemplateField HeaderText="Images">
                <ItemTemplate>
                    <asp:Image ID="imgRoom" runat="server" 
                               ImageUrl='<%# Eval("Images") %>' 
                               CssClass="room-image" 
                               Width="100" Height="100" />
                </ItemTemplate>
            </asp:TemplateField>
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
            SelectCommand="SELECT * FROM [BB_Rooms]" 
            DeleteCommand="DELETE FROM [BB_Rooms] WHERE [Room_ID] = @Room_ID" 
            InsertCommand="INSERT INTO [BB_Rooms] ([Room_ID], [Rno], [Images], [Capacity], [Type], [Status], [Bedtype], [Clean_Status], [Features], [Ratepernight]) VALUES (@Room_ID, @Rno, @Images, @Capacity, @Type, @Status, @Bedtype, @Clean_Status, @Features, @Ratepernight)" 
            UpdateCommand="UPDATE [BB_Rooms] SET [Rno] = @Rno, [Images] = @Images, [Capacity] = @Capacity, [Type] = @Type, [Status] = @Status, [Bedtype] = @Bedtype, [Clean_Status] = @Clean_Status, [Features] = @Features, [Ratepernight] = @Ratepernight WHERE [Room_ID] = @Room_ID">
            <DeleteParameters>
                <asp:Parameter Name="Room_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Room_ID" Type="String" />
                <asp:Parameter Name="Rno" Type="Decimal" />
                <asp:Parameter Name="Images" Type="String" />
                <asp:Parameter Name="Capacity" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Bedtype" Type="String" />
                <asp:Parameter Name="Clean_Status" Type="String" />
                <asp:Parameter Name="Features" Type="String" />
                <asp:Parameter Name="Ratepernight" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Rno" Type="Decimal" />
                <asp:Parameter Name="Images" Type="String" />
                <asp:Parameter Name="Capacity" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Bedtype" Type="String" />
                <asp:Parameter Name="Clean_Status" Type="String" />
                <asp:Parameter Name="Features" Type="String" />
                <asp:Parameter Name="Ratepernight" Type="String" />
                <asp:Parameter Name="Room_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

