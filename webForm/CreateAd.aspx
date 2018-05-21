<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CreateAd.aspx.cs" Inherits="webForm.CreateAd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container" style="color:grey;">
        <div class="row vertical-offset-100">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-8">
                <form id="form1" runat="server">
                    <h3>Create an ad</h3>
                    <div class="form-group">
                        <asp:Label ID="Titleofbook" runat="server" Text="Label">Title of book:</asp:Label>
                        <asp:TextBox ID="Title" runat="server" class="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Year1" runat="server" Text="Label">Year published:</asp:Label>
                        <asp:TextBox ID="Year" runat="server" class="form-control" onkeypress='validateint(event)' required="required"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Category" runat="server" Text="Label">Category:</asp:Label>
                        <asp:DropDownList CssClass="form-control" ID="BookType" runat="server" required="required">
                            <asp:ListItem Value="Chose a category"></asp:ListItem>
                            <asp:ListItem Value="fiction">Fiction</asp:ListItem>
                            <asp:ListItem Value="non-fiction">Non-Fiction</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Price1" runat="server" Text="Label">Price:</asp:Label>
                        <asp:TextBox ID="Price" runat="server" MaxLength="7" class="form-control" onkeypress='validateint(event)' required="required"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Description1" runat="server" Text="Label">Short description:</asp:Label>
                        <asp:TextBox ID="Description" runat="server" class="form-control" type="text" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <div class="custom-file">
                            <asp:Label ID="customFile" runat="server" class="custom-file-label">Upload image</asp:Label>
                            <asp:FileUpload ID="FileUpload" runat="server" for="customFile" />
                            <asp:Literal ID="ImageFeedback" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <asp:Button ID="Created" runat="server" Text="Create ad" OnClick="Created_Click" class="btn btn-inline btn-primary btn-md" />
                    <asp:Literal ID="Feedback" runat="server"></asp:Literal>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

