<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdInfo.aspx.cs" Inherits="webForm.AdInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container">

        <div><br /></div>

        <div class="row">
            <div class="jumbotron">
                <div class="row">
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>

                            <div class="page-header">
                                <span>
                                    <h2><u>Title of the book</u> - <i><%#Eval("title")%></i></h2>
                                </span>
                            </div>

                            <div class="col-lg-4">
                                <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="500" width="300" class="img-thumbnail" />
                            </div>

                            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                                <div class="well">
                                    <h3 class="my-3"><u>Book Description</u></h3>
                                    <p><span><%#Eval("description")%></span></p>
                                </div>
                            </div>


                            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                                <div class="well">
                                    <h3 class="my-3"><u>Book Details</u></h3>
                                    <ul class="text-left">
                                        <li>
                                            <p><b>Price: </b><%#Eval("price") %> DDK</p>
                                        </li>
                                        <li>
                                            <p><b>Category: </b><%#Eval("category")%></p>
                                        </li>
                                        <li>
                                            <p><b>Year: </b><%#Eval("year")%></p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <div>
                        <br />
                    </div>

                    <div class="col-lg-12 col-md-8 col-sm-8 col-xs-12">
                        <div class="well">
                            <asp:DataList ID="DataList3" runat="server">
                                <ItemTemplate>
                                    <h3 class="my-3"><u>Information of seller</u></h3>
                                    <ul class="text-left">
                                        <li>
                                            <p><b>Creator of the AD: </b><%#Eval("first_name")%> <%#Eval("last_name")%></p>
                                        </li>
                                        <li>
                                            <p><b>Email: </b><%#Eval("email")%></p>
                                        </li>
                                        <li>
                                            <p><b>Phone: </b><%#Eval("phone")%></p>
                                        </li>
                                    </ul>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
