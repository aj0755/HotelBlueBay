<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admindashboard.aspx.cs" Inherits="admindashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="dashboard-container">
    <div class="dashboard-content">
        <div class="dashboard-row">
            <div class="dashboard-card">
                <div class="card-body">
                    <span class="card-icon"><i class="fa-solid fa-users"></i></span>
                    <div class="card-info">
                        <asp:Label ID="lblTotalUsers" runat="server" CssClass="card-count" Text="0"></asp:Label>
                        <span>Total Users</span>
                    </div>
                </div>
            </div>
            <div class="dashboard-card">
                <div class="card-body">
                    <span class="card-icon"><i class="fa-solid fa-list"></i></span>
                    <div class="card-info">
                        <asp:Label ID="lblTotalCategories" runat="server" CssClass="card-count" Text="0"></asp:Label>
                        <span>Total Categories</span>
                    </div>
                </div>
            </div>
            <div class="dashboard-card">
                <div class="card-body">
                    <span class="card-icon"><i class="fas fa-bed"></i></span>
                    <div class="card-info">
                        <asp:Label ID="lblTotalProducts" runat="server" CssClass="card-count" Text="0"></asp:Label>
                        <span>Total Rooms</span>
                    </div>
                </div>
            </div>
            <div class="dashboard-card">
                <div class="card-body">
                    <span class="card-icon"><i class="fas fa-calendar-check"></i></span>
                    <div class="card-info">
                        <asp:Label ID="lblTotalOrders" runat="server" CssClass="card-count" Text="0"></asp:Label>
                        <span>Total Booking</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="dashboard-row">
            <div class="dashboard-section">
                <div class="section-header">
                    <h4>Recent Users</h4>
                </div>
                <div class="section-body">
                    <asp:GridView ID="gvRecentUsers" runat="server" CssClass="table-style" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="User_ID" HeaderText="User_ID" ReadOnly="True" 
                                InsertVisible="False" SortExpression="User_ID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                                SortExpression="PhoneNo" />
                        </Columns>
                    </asp:GridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [BB_User]"></asp:SqlDataSource>
                    
                </div>
            </div>
            <div class="dashboard-section">
                <div class="section-header">
                    <h4>Active Categories</h4>
                    <asp:Button ID="btnAddCategory" runat="server" CssClass="btn-style" 
                        Text="Add Category" onclick="btnAddCategory_Click"/>
                </div>
                <div class="section-body">
                    <asp:GridView ID="gvCategories" runat="server" CssClass="table-style" 
                        AutoGenerateColumns="False" DataKeyNames="Category_ID" 
                        DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" 
                                ReadOnly="True" SortExpression="Category_ID" />
                            <asp:BoundField DataField="Categoryname" HeaderText="Categoryname" 
                                SortExpression="Categoryname" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [BB_Category]"></asp:SqlDataSource>
                    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>
    <script>
        // Check if the query string contains login=success
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('login') === 'success') {
        alertify.set('notifier', 'position', 'top-right');
            alertify.success('You are successfully logged in!');
            const newURL = window.location.href.split('?')[0];
        window.history.replaceState({}, document.title, newURL);
        }
    </script>
</asp:Content>

