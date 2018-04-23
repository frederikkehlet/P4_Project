<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="searchAd.aspx.cs" Inherits="webForm.searchAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div>
        <form class="form-inline" runat="server">
            <ul class="nav navbar-nav">
                <li>
                    <asp:TextBox ID="searchBox" runat="server"></asp:TextBox>
                    <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
                </li>
            </ul>
        </form>
    </div>

</asp:Content>
