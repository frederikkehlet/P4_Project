<%@  Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdUpdate.aspx.cs" Inherits="webForm.AdUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4">
                <form id="form1" runat="server">
                    <h3>Update ad</h3>
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
                        <asp:Label ID="Description1" runat="server" Text="Label">Description:</asp:Label>
                        <asp:TextBox ID="Description" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <b>Current image: </b><br />
                        <asp:Image ID="Image" runat="server" width="100" Height="100"/>
                        <div class="custom-file">
                            <asp:Label ID="customFile" runat="server" class="custom-file-label">Upload new image</asp:Label>
                            <asp:FileUpload ID="FileUpload" runat="server" class="custom-file" for="customFile" />
                            <asp:Literal ID="ImageFeedback" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <asp:Button ID="AdUpdated" runat="server" Text="Update ad" OnClick="AdUpdated_Click" class="btn btn-inline btn-primary btn-md" />
                    <asp:Literal ID="Feedback" runat="server"></asp:Literal>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
