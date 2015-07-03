<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITIL._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
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

    </form>
</body>
</html>
