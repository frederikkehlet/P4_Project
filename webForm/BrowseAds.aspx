<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowseAds.aspx.cs" Inherits="webForm.BrowseAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container col-md-12">
        <form id="form1" runat="server">
            <div>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="table-responsive">
                            <table class="table">
                                <tr class="success">
                                    <td>
                                        <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" class="img-thumbnail" width="100" height="200" alt="Cinque Terre" />
                                    </td>
                                    <td>
                                        <span><b>Title: </b><%#Eval("title")%></span>
                                    </td>
                                    <td>
                                        <span><b>Price: </b><%#Eval("price")%> Kr.</span>                                       
                                    </td>
                                    <td>
                                        <a href="AdInfo.aspx?AD_ID=<%#Eval("ad_id")%>">Show more</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </form>


    </div>
</asp:Content>
