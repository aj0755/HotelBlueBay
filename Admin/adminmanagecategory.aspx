<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="adminmanagecategory.aspx.cs" Inherits="Content_adminmanagecategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="categorycontent">
        <div class="form-container">
            <h2>Category Master</h2>
        </div>

        <!-- Add Category Form -->

            <asp:TextBox ID="txtCategoryName" runat="server" CssClass="input-text" Placeholder="Enter Category Name"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add"  />
        </div>

        <!-- Category Table -->
        <div class="table-container">
            <asp:GridView ID="gvCategories" runat="server" CssClass="category-table"
                AutoGenerateColumns="False" DataKeyNames="Category_ID" >
                <Columns>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="delete-btn" CommandArgument='<%# Eval("Category_ID") %>' >
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                </Columns>
            </asp:GridView>

        </div>
    </div>
</asp:Content>

