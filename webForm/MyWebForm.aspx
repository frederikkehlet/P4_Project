<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="webForm.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
    <div class="container-fluid">
        <form id="form1" class="col-md-12" runat="server">
            <div>
                <h1>Register</h1>
                <!-- This is a server controller. 
                The ID is used to access properties from server-side code -->
                <div class="form-group">
                    <asp:Label ID="emailLabel" runat="server" Text="Label">Email: </asp:Label>
                    <asp:TextBox ID="emailTextBox" runat="server" type="email" required="required" placeholder="Email" class="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="passwordLabel" runat="server" Text="Label">Password: </asp:Label>
                    <asp:TextBox ID="passwordTextBox" runat="server" type="password" required="required" placeholder="Password" class="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="firstNameLabel" runat="server" Text="Label">First name: </asp:Label>
                    <asp:TextBox ID="firstNameTextBox" runat="server" required="required" placeholder="First name" class="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lastNameLabel" runat="server" Text="Label">Last name: </asp:Label>
                    <asp:TextBox ID="lastNameTextBox" runat="server" required="required"  placeholder="Last name" class="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="phoneLabel" runat="server" Text="Label">Phone number: </asp:Label>
                    <asp:TextBox ID="phoneTextBox" runat="server" type="tel" required="required" placeholder="Phone" class="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <!-- UserCreated method to be used here instead-->
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" class="btn btn-primary" />
                </div>
                
                <asp:Literal ID="feedback" runat="server"></asp:Literal>
            </div>
        </form>
    </div>
</body>
</html>
