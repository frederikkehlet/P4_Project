<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowseAds.aspx.cs" Inherits="webForm.BrowseAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div>
        <br />
    </div>
    <div class="container">
        <asp:DataList ID="DataList1" RepeatColumns="3" runat="server">

            <HeaderTemplate>
                <h1>ADS - <small>Looking for something specific? </small><a href="searchAd.aspx" class="btn btn-large btn-primary">Search</a></h1>
                
            </HeaderTemplate>

            <ItemTemplate>
                <div class="row col-lg-12">
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
</asp:Content>
