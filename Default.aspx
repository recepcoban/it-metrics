<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITIL._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .resim:hover
        {
            border: solid 3px red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="jumbotron text-center">
            <h1>Metrics for IT Service Management</h1>
        </div>
        <div class="container text-center">
            <div class="col-lg-6 col-lg-offset-3">
                <asp:Button Text="Metrics Operations" PostBackUrl="~/Metrics.aspx" CssClass="btn btn-primary col-lg-5" runat="server" />
                <asp:Button Text="Reporting Dashboard" PostBackUrl="~/Report.aspx" CssClass="btn btn-success col-lg-5 col-lg-offset-1" runat="server" />
            </div>
        </div>
        <div class="container col-lg-8 col-lg-offset-2">
            <img src="img/img.png" class="img-responsive" alt="IT Metrics" />
        </div>

        <div class="clearfix"></div>
        <div class="container">

            <br />
            <hr />
            <br />
            <!-- members -->
            <div class="text-center">
                <h2>COBIT TEAM MEMBERS</h2>
            </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://tr.linkedin.com/in/recepcoban" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/recep.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>RECEP ÇOBAN</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/h%C4%B1d%C4%B1r-erbay/82/a89/6ba" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/hidir.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>HIDIR ERBAY</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/enes-a%C3%A7%C4%B1ko%C4%9Flu/83/b66/625" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/enes.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>ENES AÇIKOGLU</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/abdullah-aslan/b7/335/879" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/ahmet.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>ABDULLAH ASLAN</h4>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/g%C3%BCldestan-yal%C3%A7%C4%B1nkaya/54/703/583" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/gul.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>GÜLDESTAN YALÇINKAYA</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/aykut-y%C3%BCksek/82/a3b/a22" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/aykut.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>AYKUT YÜKSEK</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/kerem-can/84/7b8/674" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/kerem.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>KEREM CAN</h4>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="https://www.linkedin.com/pub/vahit-cildir/5b/21/787" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/vahit.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>ABDULWAHEED JALDARABDU</h4>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <div class="team-member">
                        <a href="#" title="Go to Linkedin Profile" target="_blank">
                            <img src="img/halil.jpg" class="img-responsive img-circle resim" width="225" alt="" />
                        </a>
                        <h4>HALIL ÇINAR</h4>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>

    </form>
</body>
</html>
