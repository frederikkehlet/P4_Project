<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webForm.Default1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="http://www.girltalktv.com/wp-content/uploads/2016/11/o-BOOK-CLUB-BOOKS-facebook-600x200.jpg" alt="Image">
                <div class="carousel-caption">
                    <h3>Student Market</h3>
                    <p>Login in or registrer to buy or sell books</p>
                </div>
            </div>

            <div class="item">
                <img src="https://placehold.it/1200x400?text=Another Image Maybe" alt="Image">
                <div class="carousel-caption">
                    <h3>What is </h3>
                    <p>What is this?!</p>
                </div>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Tilbage</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Frem</span>
        </a>
    </div>

    <div class="container text-center">
        <h3>About this page</h3>
        <br>
        <div class="row">
            <div class="col-sm-4">
                 <img src="https://fingertipstyping.co.uk/wp-content/uploads/2016/11/focus-group-sillhouette-700x313.jpg" class="img-responsive" style="width: 100%" alt="Image">
                <p>We are a group of 5 students who had trouble finding study related books cheap. Therfore we thought making a marketplace for selling and buying books would be a perfect soulotion. Now everbody can benefit and help other students</p>
            </div>
            <div class="col-sm-4">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%" alt="Image">
                <p>Jeg ved det ikke nr.2</p>
            </div>
            <div class="col-sm-4">
                <div class="well">
                    <p>Hmmm</p>
                </div>
                <div class="well">
                    <p>Lol noob</p>
                </div>
            </div>
        </div>
    </div>
    <br>

    <footer class="container-fluid text-center">
        <p>Lavet udelukkende af Andreas den dumme<3</p>
    </footer>
</asp:Content>
