<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="searchAd.aspx.cs" Inherits="webForm.searchAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div>
        <br />
    </div>
    <div class="container">
        <div>
            <form class="form-inline" runat="server">
                <ul class="nav navbar-nav">
                    <li>
                        <asp:TextBox ID="searchBox" runat="server" placeholder="Title" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="minPrice" runat="server" placeholder="Minimum price" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="maxPrice" runat="server" placeholder="Maximum price" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" class="btn btn-md btn-info" />
                        <span><i>If you want to see all ads, leave everything empty and hit "Search"</i></span>
                    </li>
                </ul>
            </form>
        </div>
    </div>

    <div>
        <br />
    </div>

    <div class="container">
        <div class="row">
            <asp:Literal runat="server" ID="searchResults"></asp:Literal>
            <asp:DataList ID="DataListSearch" RepeatColumns="3" runat="server">
                <ItemTemplate>
                    <div class="col-lg-12">
                        <div>
                            <div class="well">
                                <h2 class="muted"></b><%#Eval("title")%></h2>
                                <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" class="img-thumbnail" width="100" height="200" />
                                <hr>
                                <h3>Price: </b><%#Eval("price")%> Kr.</h3>
                                <hr>
                                <p><a class="btn btn-large btn-info" href="AdInfo.aspx?AD_ID=<%#Eval("ad_id")%>"><i class="icon-ok"></i>Show more</a></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
