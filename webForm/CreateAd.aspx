<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CreateAd.aspx.cs" Inherits="webForm.CreateAd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container">
        <form id="form1" runat="server" class="col-md-12">
            <h1>Create an ad</h1>
            <div class="form-group">
                <asp:Label ID="Titleofbook" runat="server" Text="Label">Title of book:</asp:Label>
                <asp:TextBox ID="Title" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class ="form-group">
                <asp:Label ID="Year1" runat="server" Text="Label">Year published</asp:Label>
                <asp:TextBox ID="Year" runat="server" class="form-control" onkeypress='validateint(event)'></asp:TextBox>
            </div>
            <div>
            <asp:DropDownList CssClass="form-control" ID="BookType" runat="server">
                <asp:ListItem Value="Chose a category"></asp:ListItem>
                <asp:ListItem Value="fiction">Fiction</asp:ListItem>
                <asp:ListItem Value="non-fiction">Non-Fiction</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Price1" runat="server" Text="Label">Price:</asp:Label>
                <asp:TextBox ID="Price" runat="server" class="form-control" onkeypress='validateint(event)'></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Description1" runat="server" Text="Label">Description:</asp:Label>
                <asp:TextBox ID="Description" runat="server" class="form-control"></asp:TextBox>
            </div>

            <asp:Label ID ="Label1" runat="server"></asp:Label>

            <div class="form-group">
                <div class="custom-file">
                    <asp:Label ID="customFile" runat="server" class="custom-file-label">Upload image</asp:Label>
                    <asp:FileUpload ID="FileUpload" runat="server" class="custom-file" for="customFile" />

                    <asp:Image ID="Image1" runat="server" Width="250px" Height="250"  />

                </div>
            </div>
            <asp:Button ID="Created" runat="server" Text="Create" OnClick="Created_Click" class="btn btn-primary btn-lg" />
            <asp:Literal ID="Feedback" runat="server"></asp:Literal>
        </form>
    </div>
</asp:Content>

