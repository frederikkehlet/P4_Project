<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdInfo.aspx.cs" Inherits="webForm.AdInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container col-md-12">
        <form id="form1" runat="server">
            <div>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
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
                    </ItemTemplate>
                </asp:DataList>
            </div>

            <asp:DataList ID="DataList3" runat="server">
                <ItemTemplate>
                    <div class="table-responsive">
                        <table class="table">
                            <tr class="info">
                                <td>
                                    <span><b>Creator of the AD: </b><%#Eval("first_name")%> <%#Eval("last_name")%></span>
                                </td>
                                <td>
                                    <span><b>Email: </b><%#Eval("email")%></span>

                                </td>
                                <td>
                                    <span><b>Phone: </b><%#Eval("phone")%></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>

        </form>
    </div>
</asp:Content>
