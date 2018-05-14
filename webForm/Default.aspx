<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webForm.Default1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <!-- Wrapper for slides -->
    <div class="card">
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://www.brianwalkerlawfirm.com/wp-content/uploads/sites/189/2015/08/Books-on-table.jpg" alt="Image">
                <div class="carousel-caption">
                    <h3>Student Market</h3>
                    <p>Login in or registrer to buy or sell books</p>
                </div>
            </div>
        </div>
    </div>

    <div><br /></div>

        <div class="container text-center">
            <h3>About this page</h3>
            <br>
            <div class="row">
                <div class="card">
                    <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                        <img src="https://fingertipstyping.co.uk/wp-content/uploads/2016/11/focus-group-sillhouette-700x313.jpg" class="img-responsive" style="width: 100%" alt="Image">
                        <p>We are a group of 5 students who had trouble finding study related books cheap. Therfore we thought making a marketplace for selling and buying books would be a perfect soulotion. Now everbody can benefit and help other students</p>
                    </div>
                </div>

                <div class="card">
                <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                    <img src="https://veganstrategist.org/wp-content/uploads/2018/02/money-heart.jpg" class="img-responsive" style="width: 100%" alt="Image">
                    <p>Make money of your old books and help out other students! Money dont grow on trees for students, but the book list for each semester certainly does. Sell the books you dont need enymore, so you can get some pocket change and help your fellow students.</p>
                </div>
                    </div>

                <div class="col-lg-4 col-md-4 col-sm-10 col-xs-12">
                    <div class="well">
                        <p><b>How to use this page</b></p>
                        <p>Registrer as a user to see or create ads for the books you need or want to sell</p>
                    </div>

                    <%if (Session["user"] == null)
                        { %>
                    <div class="well">
                        <p><b>Allready a user?</b></p>
                        <p>Click here to <a href="Login.aspx">Login</a></p>
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
