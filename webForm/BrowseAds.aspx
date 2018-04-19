<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowseAds.aspx.cs" Inherits="webForm.BrowseAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3>Column 1</h3>
                <asp:Image ID="Image1" runat="server" />
                <asp:Image ID="Image2" runat="server" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <p>Lorem ipsum dolor..</p>
                <p>Ut enim ad..</p>
            </div>
            <div class="col-sm-4">
                <h3>Column 2</h3>
                <p>Lorem ipsum dolor..</p>
                <p>Ut enim ad..</p>
            </div>
            <div class="col-sm-4">
                <h3>Column 3</h3>
                <p>Lorem ipsum dolor..</p>
                <p>Ut enim ad..</p>
            </div>
        </div>
    </div>


    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>

</asp:Content>
