<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrer.aspx.cs" Inherits="webForm.Registrer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
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

    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-8 col-md-offset-4">
                <form id="form1" class="col-md-6" runat="server">
                    <div>
                        <h3>Register</h3>
                        <!-- This is a server controller.
                The ID is used to access properties from server-side code -->
                        <div class="form-group">
                            <asp:TextBox ID="emailTextBox" runat="server" type="email" required="required" placeholder="Email" class="form-control"></asp:TextBox>
                            <asp:Literal ID="EmailStatus" runat="server"></asp:Literal>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="passwordTextBox" runat="server" type="password" required="required" placeholder="Password" class="form-control"></asp:TextBox>
                            <asp:Literal ID="PasswordStatus" runat="server"></asp:Literal>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="firstNameTextBox" runat="server" required="required" placeholder="First name" class="form-control" onkeypress='validateNum(event)'></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="lastNameTextBox" runat="server" required="required" placeholder="Last name" class="form-control" onkeypress='validateNum(event)'></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="phoneTextBox" runat="server" type="tel" required="required" placeholder="Phone" class="form-control" onkeypress='validateLetter(event)'></asp:TextBox>
                            <asp:Literal ID="PhoneStatus" runat="server"></asp:Literal>
                        </div>

                        <div class="form-group">
                            <!-- UserCreated method to be used here instead, hej frederik, kan du se det her, jo det kan ske -->
                            <asp:Button ID="submitButton" runat="server" Text="Register" OnClick="submitButton_Click" class="btn btn-lg btn-primary btn-block btn-signin" />
                        </div>   
                    </div>            
                    <span>Already have a user? Log in <a href="Login.aspx">here.</a></span><br />
                    <asp:Literal ID="feedback" runat="server"></asp:Literal>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
