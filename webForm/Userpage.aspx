<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="webForm.Userpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
            <form id="form" runat="server" class="col-md-12">
            <asp:Button ID="Edit1" runat="server" Text="Edit user information"/>
            <div class="form-group">
                <asp:Label ID="Firstn" runat="server" Text="Label">Firstname</asp:Label>
                <asp:TextBox ID="Firstname" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Lastn" runat="server" Text="Label">Lastname</asp:Label>
                <asp:TextBox ID="Lastname" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="EM" runat="server" Text="Label">Email</asp:Label>
                <asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Pword" runat="server" Text="Label">password</asp:Label>
                <asp:TextBox ID="Password" input type="password"  runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Phon" runat="server" Text="Label">Phonenumber</asp:Label>
                <asp:TextBox ID="Phonenumber" runat="server" class="form-control"></asp:TextBox>
            </div>
        </form>
</asp:Content>
