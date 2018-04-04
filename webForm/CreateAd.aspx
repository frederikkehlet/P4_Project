<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAd.aspx.cs" Inherits="webForm.CreateAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an ad</title>

    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function showpreview(input) {

            if (input.files && input.files[0]) {

                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgpreview').css('visibility', 'visible');
                    $('#imgpreview').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Create an ad</h1>
            Title of book:
            <asp:TextBox ID="Title" runat="server"></asp:TextBox>
        </div>
            Book type:
            <asp:DropDownList ID="Booktype" runat="server">
                <asp:ListItem Value="a" Text="Non fiction" />
                <asp:ListItem Value="b" Text="Fiction" />
            </asp:DropDownList>    
        <div>
            Price:
            <asp:TextBox ID="Price" runat="server"></asp:TextBox>
        </div>
        <div>
            Description:
            <asp:TextBox ID="Description" runat="server"></asp:TextBox>
        </div>
        <div>              
             <img id="imgpreview" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
             <asp:FileUpload ID="Picture" runat="server" onchange="showpreview(this);" />         
        </div>
            Create ad:
            <asp:Button ID="Created" runat="server" Text="Create" OnClick="Created_Click" />
        <div>
            <asp:Literal ID="Feedback" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
