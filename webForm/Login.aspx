<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">

                <h3>Please sign in</h3>

                <form runat="server">
                    <span id="reauth-email" class="reauth-email"></span>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="email" ID="inputEmail" class="form-control" placeholder="Email address" required="required"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="password" ID="inputPassword" class="form-control" placeholder="Password" required="required"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="loginButton" runat="server" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" OnClick="loginClick" Text="Log in" />
                    </div>   
                </form>
                <span>Don't have a user? <a href="Registrer.aspx">Register </a>here.</span><br />
                <asp:Literal ID="queryResult" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</body>
</html>
