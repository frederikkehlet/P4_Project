<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowseAds.aspx.cs" Inherits="webForm.BrowseAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container col-md-12">
        <form id="form1" runat="server">
            <div>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="100" width="100"/>
                                </td>
                                <td>
                                    <%#Eval("title")%>
                                </td>
                                <td>
                                    <a href="<%#Eval("ad_id") %>">Link</a> 
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </form>


    </div>    
</asp:Content>
