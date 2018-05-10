<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdInfo.aspx.cs" Inherits="webForm.AdInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container">

        <div>
            <br />
        </div>

        <div class="row">
            <div class="jumbotron">
                <div class="row">
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>

                            <div class="page-header">
                                <span >
                                    <h3><i><%#Eval("title")%></i></h3>
                                </span>
                            </div>

                            <div class="col-lg-4" >
                                <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="500" width="300" class="img-thumbnail"/>
                            </div>

                            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                                <div class="well">
                                    <h4 class="my-3"><b>Description</b></h4>
                                    <hr style="border-color:black;"/>
                                    <p><span><%#Eval("description")%></span></p>
                                </div>
                            </div>


                            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                                <div class="well">
                                    <h4 class="my-3"><b>Details</b></h4>
                                    <hr style="border-color:black;"/>
                                    <p><b>Price: </b><%#Eval("price") %> DDK</p>
                                    <p><b>Category: </b><%#Eval("category")%></p>
                                    <p><b>Year: </b><%#Eval("year")%></p>
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
                                    <h4 class="my-3"><b>Seller info</u></h4>
                                    <hr style="border-color:black;"/>
                                    <span class="glyphicon glyphicon-user">&nbsp;</span><p style="display:inline;"><%#Eval("first_name")%> <%#Eval("last_name")%></p><br />
                                    <span class="glyphicon glyphicon-envelope">&nbsp;</span><p style="display:inline;"><%#Eval("email")%></p><br />
                                    <span class="glyphicon glyphicon-earphone">&nbsp;</span><p style="display:inline;"><%#Eval("phone")%></p>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
