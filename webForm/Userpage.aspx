<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="webForm.Userpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row vertical-offset-0">
            <form id="formInfo" runat="server" class="col-md-12">
            <div class="col-md-4" style="border:1px solid white; border-right-color: black;">  
                    <h3>Update your information</h3>
                    <div class="form-group">
                        <asp:Label ID="Firstn" runat="server" Text="Label">Firstname</asp:Label>
                        <asp:TextBox ID="Firstname" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Lastn" runat="server" Text="Label">Lastname</asp:Label>
                        <asp:TextBox ID="Lastname" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="EM" runat="server" Text="Label">Email</asp:Label>
                        <asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Pword" runat="server" Text="Label">password</asp:Label>
                        <asp:TextBox ID="Password" type="password" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Phon" runat="server" Text="Label">Phonenumber</asp:Label>
                        <asp:TextBox ID="Phonenumber" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Edit1" runat="server" Text="Update info" class="btn btn-lg btn-primary btn-block btn-signin" />
                    </div>    
            </div>
            <div class="col-md-8"">   
                <h3>Your ads</h3>
                    <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="table-responsive">
                            <table class="table" style="border:1px solid white; border-radius:5px;">
                                <tr class="info">
                                    <td>
                                        <image src="data:Image/png;base64,<%#Convert.ToBase64String(((Byte[])Eval("image")))%>" height="500" width="300" class="img-thumbnail" alt="Cinque Terre" />
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
                                    <td>
                                        <a href="AdDelete.aspx?AD_ID=<%#Eval("ad_id")%>" class="btn btn-xs btn-danger">Delete ad</a>
                                    </td>
                                    <td>
                                        <asp:Button ID="updateButton" runat="server" Text="Update ad" class="btn btn-xs btn-primary btn-block btn-signin" />
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
