<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdInfo.aspx.cs" Inherits="webForm.AdInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>

            <div class="container">
                <span>
                    <h1>Title - <small><%#Eval("title")%></small></h1>
                </span>

                <div class="row">
                    <div class="card">
                        <div class="col-sm-4">
                            <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="500" width="300" class="img-thumbnail" />
                        </div>
                    </div>


                    <div class="col-sm-4">
                        <div class="well">
                            <h3 class="my-3">Book Description</h3>
                            <p><span><%#Eval("description")%></span></p>
                        </div>
                    </div>


                    <div class="col-sm-4">
                        <div class="well">
                            <h3 class="my-3">Book Details</h3>
                            <ul class="text-left">
                                <li><span><b>Price: </b><%#Eval("price") %> DDK</span></li>
                                <li><span><b>Category: </b><%#Eval("category")%></span></li>
                                <li><span><b>Year: </b><%#Eval("year")%></span></li>
                                <li><span><b>Date added: </b><%#Eval("date") %></span></li>

                            </ul>
                        </div>
                </div>
                </div>
            </div>
            </div>
        </ItemTemplate>
    </asp:DataList>


    <!--



                <div>
                    <asp:DataList ID="DataList3" runat="server">
                        <ItemTemplate>
                            <div class="table-responsive">
                                <table class="table basic">
                                    <tr class="basic">
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
                </div> -->


</asp:Content>
