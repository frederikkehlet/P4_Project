<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webForm.Default1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <!-- Wrapper for slides -->
    <div class="card">
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://www.brianwalkerlawfirm.com/wp-content/uploads/sites/189/2015/08/Books-on-table.jpg" alt="Image">
                <% if (Session["user"] == null) { %>
                <div class="carousel-caption">
                    <h1>Student Market</h1>
                    <h3>Log in or register to buy or sell used books</h3>
                </div>
                <% } else { %>
                <div class="carousel-caption">
                    <h1>Welcome to the Student Market</h1>
                    <h3>Browse ads from your fellow students or create your own!</h3>
                </div>
                <% } %>
            </div>
        </div>
    </div>

    <div><br /></div>

        <div class="container text-center">
            <h3>About Student Market</h3>
            <br>
            <div class="row">
                <div class="card">
                    <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                        <img src="https://fingertipstyping.co.uk/wp-content/uploads/2016/11/focus-group-sillhouette-700x313.jpg" class="img-responsive" style="width: 100%" alt="Image">
                        <p style="text-align:left;">We are a group of 5 students who had trouble finding study-related books for a cheap price. 
                            Therefore we thought that making "Student Market", a marketplace for selling and buying used school books, would be a perfect solution. 
                            The goal is that everybody will benefit and help other students</p>
                    </div>
                </div>

                <div class="card">
                <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                    <img src="https://veganstrategist.org/wp-content/uploads/2018/02/money-heart.jpg" class="img-responsive" style="width: 100%" alt="Image">
                    <p style="text-align:left;">Make money of your old books and help out other students! Money doesn't grow on trees for students, but the book list for each semester certainly does. 
                        Sell the books you don't need anymore, it may benefit you economically and it will help your fellow students.</p>
                </div>
                    </div>

                <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                    <div class="well">
                        <p><b>How to use this page</b></p>
                        <p>Register as a user to see or create ads for the books you need or want to sell</p>
                    </div>

                    <%if (Session["user"] == null)
                        { %>
                    <div class="well">
                        <p><b>Already a user?</b></p>
                        <p>Click <a href="Login.aspx">here</a> to log in</p>
                    </div>
                    <%}
                        else
                        { %>
                    <div class="well">
                        <p>Want to create an Ad?</p>
                        <p>Click <a href="CreateAd.aspx">Here</a></p>
                    </div>

                    <%} %>
                </div>
            </div>
        </div>


</asp:Content>
