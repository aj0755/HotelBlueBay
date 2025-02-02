<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Admin_ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
            <div class="header">
                <h2>User Master</h2>
            </div>
            <div class="table-container">
                <asp:GridView ID="gvUsers" runat="server" CssClass="user-table" 
                    AutoGenerateColumns="False" DataKeyNames="User_ID" 
                    DataSourceID="SqlDataSource1" >
                    <Columns>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="delete-btn" CommandArgument='<%# Eval("User_ID") %>' >
                                    <i class="fa fa-trash"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Username" HeaderText="User Name" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="Mobile No" />
                        <asp:BoundField DataField="Email" HeaderText="Email Id" />
                    </Columns>
                </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [BB_User]"></asp:SqlDataSource>
                
            </div>
        </div>
</asp:Content>

