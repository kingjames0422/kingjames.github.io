<!--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SMDC_Site.ContactUs" %>-->

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SMDC PRIME CONDO - Contact</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="libraries/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="libraries/Font-Awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
    <link href="css/MasterStyles.css" rel="stylesheet" />
    <script src="libraries/JQuery/jquery-3.2.1.min.js"></script>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>--%>
    <script src="../libraries/Proper/popper.min.js"></script>
    <script src="libraries/Bootstrap/js/bootstrap.min.js"></script>
    <script src="scripts/MasterScript.js"></script>
</head>
<body>
    <div runat="server">
        <nav class="navbar navbar-expand-sm navbar-dark fixed-top">
            <!--<a class="navbar-brand" href="Home.html"><span><i class="fa fa-home" aria-hidden="true" style="color: whitesmoke;"></i></span></a>-->
            <a class="navbar-brand" href="index.html">
                <img src="images/smdc-logo.jpg" alt="SMDC" width="150" height="50" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true" style="color: whitesmoke;"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="About.html">About</a>
                    </li>
                    <li class="nav-item dropdown">
                         <a class="nav-link" href="../Properties.html">Properties</a>
<%--                        <ul class="dropdown-menu" role="menu">
                            <li><a class="nav-link" href="../property/air-residences.html">AIR RESIDENCES ( MAKATI CITY )</a></li>
                            <li><a class="nav-link" href="../property/blue-residences.html">BLUE RESIDENCES ( KATIPUNAN AVE. )</a></li>
                            <li><a class="nav-link" href="../property/breeze-residences.html">BREEZE RESIDENCES ( ROXAS BLVD. )</a></li>
                            <li><a class="nav-link" href="../property/chateau-elysee.html">CHATEAU ELYSÉE ( PARAÑAQUE )</a></li>
                            <li><a class="nav-link" href="../property/cheer-residences.html">CHEER RESIDENCES ( MARILAO BULACAN )</a></li>
                            <li><a class="nav-link" href="../property/coast-residences.html">COAST RESIDENCES ( ROXAS BLVD. )</a></li>
                            <li><a class="nav-link" href="../property/fame-residences.html">FAME RESIDENCES ( MANDALUYONG CITY )</a></li>
                            <li><a class="nav-link" href="../property/fern-residences.html">FERN RESIDENCES ( SM NORTH )</a></li>
                            <li><a class="nav-link" href="../property/s-residences.html">S RESIDENCES ( MALL OF ASIA )</a></li>
                            <li><a class="nav-link" href="../Properties.html">See All Properties</a></li>
                        </ul>--%>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Contact.aspx">Contact<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <%--<p class="lead text-center">Get in touch with a Property Specialist. See the details below</p>--%>
                <p class="lead text-center">SMDC Prime Condo PH</p>
                <div class="row">
                    <%--<div class="col-md-4 col-xs-12">
                        <div class="card-body">
                            <p class="text-center text-info"><b>CONTACT PERSON:</b></p>
                            <p class="text-center"><u>Sheen C. Lanto</u></p>
                            <p class="text-center text-muted">Property Specialist</p>
                        </div>
                    </div>--%>
                    <div class="col-md-6 col-xs-12">
                        <div class="card-body">
                            <p class="text-center text-info"><b>EMAIL ADDRESS:</b></p>
                            <p class="text-center"><u>smdcprimecondoph@gmail.com</u></p>
                            <p class="text-center text-muted">Direct Email</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="card-body">
                            <p class="text-center text-info"><b>CONTACT NUMBERS:</b></p>
                            <p class="text-center"><a class="text-muted">Smart: </a><u>0908 462 9152</u></p>
                            <p class="text-center"><a class="text-muted">Globe: </a><u>0956 229 1152</u></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container container2">
            <div class="bg-white">
                <div class="row">
                    <div class="col-md-12 col-xs-12 mx-auto">
                        <p class="text-center txtLbl">INQUIRE NOW</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12 mx-auto">
                        <form id="InquiryForm" method="post" class="form-horizontal" runat="server">
                            <div class="form-group">
                                <p>
                                    <%--<label>Name:</label>--%>
                                    <%--<asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ControlToValidate="txtName" CssClass="has-error" ErrorMessage="Name is required." ForeColor="Red" ValidationGroup="validate_controls" EnableClientScript="False" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter First Name" MaxLength="50" Height="40px" AutoComplete="off"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="txtName" placeholder ="Enter Name" maxlength="50" name="clientName" />--%>
                                </p>
                                <p>
                                    <%--<label>Email:</label>--%>
                                    <%--<asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ControlToValidate="txtEmail" CssClass="has-error" ErrorMessage="E-mail is required." ForeColor="Red" ValidationGroup="validate_controls" EnableClientScript="False" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" MaxLength="50" Height="40px" AutoComplete="off"></asp:TextBox>
                                    <%--<input type="email" class="form-control" id="txtEmail" placeholder ="Enter Your Email" maxlength="50" name="clientEmail" />--%>
                                </p>
                                <p>
                                    <%--<label>Mobile Number:</label>--%>
                                    <%--<asp:RequiredFieldValidator ID="MobileNumFieldValidator" runat="server" ControlToValidate="txtMobileNum" CssClass="has-error" ErrorMessage="Mobile Number is required." ForeColor="Red" ValidationGroup="validate_controls" EnableClientScript="False" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                    <asp:TextBox ID="txtMobileNum" runat="server" CssClass="form-control" placeholder="Enter Your Mobile Number" MaxLength="11" Height="40px" AutoComplete="off"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="txtMobileNum" placeholder ="Enter Your Mobile Number" maxlength="30" name="clientMobileNum" />--%>
                                </p>
                                <p>
                                    <%--<label>Project Name:</label>--%>
                                    <%--<asp:RequiredFieldValidator ID="ProjectFieldValidator" runat="server" ControlToValidate="txtProjectName" CssClass="has-error" ErrorMessage="Project Name is required." ForeColor="Red" ValidationGroup="validate_controls" EnableClientScript="False" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                    <asp:TextBox ID="txtProjectName" runat="server" CssClass="form-control" placeholder="Enter The Property You're Interested In" MaxLength="100" Height="40px" AutoComplete="off"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="txtProjectName" placeholder ="Enter Name of Project You're Interested In" maxlength="100" name="projectName" />--%>
                                </p>
                                <p>
                                    <%--<label>Message:</label>--%>
                                    <%--<asp:RequiredFieldValidator ID="MessageFieldValidator" runat="server" ControlToValidate="txtMessage" CssClass="has-error" ErrorMessage="Message is required." ForeColor="Red" ValidationGroup="validate_controls" EnableClientScript="False" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Enter Your Message" Height="80px" MaxLength="500" Rows="3" TextMode="MultiLine" Style="resize: none" AutoComplete="off"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="txtMessage" placeholder ="Enter Your Message" maxlength="500" name="clientMessage" />--%>
                                </p>
                                <p>
                                    <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" OnClientClick="sendInquiry();" CausesValidation="true" ValidationGroup="validate_controls"/>--%>
                                    <input type="button" id="btnSubmit" class="btn btn-info btn-block" onclick="sendInquiry()" value="Submit" />
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="text-white mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xs-12 mx-auto">
                    <!--Footer Bottom-->
                    <p class="text-center">Copyright &copy; SMDC Prime Condo PH 2019</p>
                </div>
            </div>
        </div>
    </footer>
<%--        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xs-12 mx-auto">
                    <div class="card-body">
                        <p class="text-center txtLbl">SOCIAL MEDIA:</p>
                        <div class="text-center">
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-instagram"></a>
                            <a href="#" class="fa fa-youtube"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
</body>
</html>
