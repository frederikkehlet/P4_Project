<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAd.aspx.cs" Inherits="webForm.CreateAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an ad</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server" class="col-md-12">
            <h1>Create an ad</h1>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Label">Title of book:</asp:Label>
                <asp:TextBox ID="Title" runat="server" class="form-control"></asp:TextBox>
            </div>

            <asp:DropDownList ID="BookType" runat="server">
                <asp:ListItem Value="a">Fiction</asp:ListItem>
                <asp:ListItem Value="b">non-fiction</asp:ListItem>
            </asp:DropDownList>


            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Label">Price:</asp:Label>
                <asp:TextBox ID="Price" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Label">Description:</asp:Label>
                <asp:TextBox ID="Description" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">                
                <div class="custom-file">   
                    <asp:Label ID="customFile" runat="server" class="custom-file-label">Upload image</asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" class="custom-file" for="customFile"/>
                </div>
            </div>

            <asp:Label ID="Label6" runat="server" Text="Label">Create ad:</asp:Label>
            <asp:Button ID="Created" runat="server" Text="Create" OnClick="Created_Click" class="btn btn-primary" />
            <asp:Literal ID="Feedback" runat="server"></asp:Literal>
        </form>
    </div>
</body>
</html>
