﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="webForm.Userpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <script>
        function validateNum(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /[a-å,A-Å]|\./;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }

        function validateLetter(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /[0-9]|\./;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }


    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <div class="container-fluid" style="margin-top:2%;">
        <div class="row vertical-offset-0">
            <form id="formInfo" runat="server">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6" style="border:1px solid white; border-right-color: black;">  
                    <h3>My account</h3>
                <div style="line-height:200%;">
                    <b>First Name:</b>
                <asp:Literal ID="FirstNameLiteral" runat="server"></asp:Literal> <br />
                    <b> Last Name: </b>
                <asp:Literal ID="LastNameLiteral" runat="server"></asp:Literal> <br />
                    <b> Email: </b>
                <asp:Literal ID="EmailLiteral" runat="server"></asp:Literal> <br />
                    <b> Phone: </b>
                <asp:Literal ID="PhoneLiteral" runat="server"></asp:Literal> <br /> <br />
                </div>

                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Update information</button>
                <div id="demo" class="collapse" style="margin-top:3%;">
                    <div class="form-group">
                        <asp:Label ID="Firstn" runat="server" Text="Label">First name</asp:Label>
                        <asp:TextBox ID="Firstname" runat="server" class="form-control" onkeypress="validateNum(event)">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Lastn" runat="server" Text="Label">Last name</asp:Label>
                        <asp:TextBox ID="Lastname" runat="server" class="form-control" onkeypress='validateNum(event)'></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="EM" runat="server" Text="Label">Email</asp:Label>
                        <asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
                    </div>
<%--                    <div class="form-group">
                        <asp:Label ID="Pword" runat="server" Text="Label">Password</asp:Label>
                        <asp:TextBox ID="Password" type="password" runat="server" class="form-control" required="required"></asp:TextBox>
                    </div>--%>
                    <div class="form-group">
                        <asp:Label ID="Phon" runat="server" Text="Label">Phone number</asp:Label>
                        <asp:TextBox ID="Phonenumber" runat="server" class="form-control" onkeypress='validateLetter(event)'></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <table class="table-responsive" style="width:100%;">
                            <tr>      
                                <td style="padding-right:4%;">
                                    <asp:Button ID="deleteButton" runat="server" Text="Delete account" OnClick="deleteButton_Click" OnClientClick = "return confirm('Are you sure you want to delete your account?');" class="btn btn-sm btn-block btn-danger btn-signin" />
                                </td>
                                <td>
                                    <asp:Button ID="editButton" runat="server" Text="Update account" OnClick="editButton_Click" class="btn btn-sm btn-block btn-primary btn-signin" />
                                </td>
                            </tr>
                        </table> 
                        <asp:Literal ID="feedback" runat="server"></asp:Literal>
                    </div>
                    </div>
                
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 ">   
                <h3>My ads</h3>
                    <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="table-responsive">
                            <table class="table basic" style="border:1px solid white; border-radius:5px;">
                                <tr class="basic">
                                    <td>
                                        <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="100" width="200" class="img-thumbnail" alt="Cinque Terre" />
                                    </td>
                                    <td>
                                        <span><b>Title: </b><%#Eval("title")%></span>
                                    </td>
                                    <td>
                                        <span><b>Price: </b><%#Eval("price")%> Kr.</span>                                       
                                    </td>
                                    <td>
                                        <a href="AdInfo.aspx?AD_ID=<%#Eval("ad_id")%>" class="btn btn-sm btn-info">Show more</a>
                                    </td>
                                    <td>
                                        <a href="AdDelete.aspx?AD_ID=<%#Eval("ad_id")%>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this ad?');" >Delete ad</a>
                                    </td>
                                    <td>
                                        <a href="AdUpdate.aspx?AD_ID=<%#Eval("ad_id")%>" class="btn btn-sm btn-primary">Update ad</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>   
            </div>
            </form>

        </div>
    </div>


</asp:Content>
