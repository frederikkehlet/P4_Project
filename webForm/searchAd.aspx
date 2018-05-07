<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="searchAd.aspx.cs" Inherits="webForm.searchAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div>
        <form class="form-inline" runat="server">
            <ul class="nav navbar-nav">
                <li>
                    <asp:TextBox ID="searchBox" runat="server" placeholder="Title"></asp:TextBox>
                    <asp:TextBox ID="minPrice" runat="server" placeholder="Minimum price"></asp:TextBox>
                    <asp:TextBox ID="maxPrice" runat="server" placeholder="Maximum price"></asp:TextBox>
                    <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
                </li>
            </ul>
        </form>
    </div>
    <asp:DataList ID="DataListSearch" runat="server">
        <ItemTemplate>
            <div>
                <div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr class="success">
                                <td>
                                    <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="500" width="300" class="img-thumbnail" alt="Cinque Terre" />
                                </td>
                                <td>
                                    <span><b>Title: </b><%#Eval("title")%></span>
                                </td>
                                <td>
                                    <span><b>Price: </b><%#Eval("price")%></span>
                                </td>
                                <td>
                                    <span><b>year</b></span>
                                    <%#Eval("year")%>
                                </td>
                                <td>
                                    <span><b>category: </b><%#Eval("category")%></span>
                                </td>
                                <td>
                                    <span><b>Description: </b><%#Eval("description")%></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
