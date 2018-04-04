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
    <h1>Login</h1>
    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_1x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" runat="server">
                <span id="reauth-email" class="reauth-email"></span>
                <asp:TextBox runat="server" type="email" ID="inputEmail" class="form-control" placeholder="Email address"></asp:TextBox>
                <asp:TextBox runat="server" type="password" ID="inputPassword" class="form-control" placeholder="Password"></asp:TextBox>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me" />
                        Remember me
                   
                    </label>
                </div>
                <asp:Button ID="loginButton" runat="server" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" OnClick="loginClick" Text="Log in" />
            </form>
            <a href="#" class="forgot-password">Forgot the password?</a>
        </div>
        <asp:Literal ID="queryResult" runat="server"></asp:Literal>
    </div>
</body>
</html>
