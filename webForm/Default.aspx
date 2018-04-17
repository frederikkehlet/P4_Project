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
                    <h3>Student market</h3>
                    <p>Tekst af hvad siden er eller gør</p>
                </div>
            </div>

            <div class="item">
                <img src="https://placehold.it/1200x400?text=Another Image Maybe" alt="Image">
                <div class="carousel-caption">
                    <h3>En AD</h3>
                    <p>Måske idk</p>
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
        <h3>Hvem er vi?</h3>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%" alt="Image">
                <p>Jeg ved det ikke nr.1</p>
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
        <p>Lavet udelukkende af Andreas den smukke</p>
    </footer>
</asp:Content>
