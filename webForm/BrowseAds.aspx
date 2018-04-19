<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowseAds.aspx.cs" Inherits="webForm.BrowseAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container col-md-12">
        <form id="form1" runat="server">
            <div>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="table">
                            <tr>
                                <td>
                                    <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="100" width="100"/>
                                </td>
                                <td>
                                    <span><b>Title</b></span>
                                    <%#Eval("title")%>
                                </td>
                                <td>
                                    <span><b>Price</b></span>
                                    <%#Eval("price")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </form>


    </div>    
</asp:Content>
