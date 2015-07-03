<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="ITIL.Report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>

        <div class="jumbotron text-center">
            <asp:Label Font-Size="XX-Large" Font-Bold="true" runat="server">REPORTING DASHBOARD</asp:Label>
            <asp:Button Text="Go Back" CssClass="pull-right btn btn-danger" PostBackUrl="~/Default.aspx" runat="server" />
        </div>
        <div class="container">
            <div class="col-lg-12">

                <div class="col-lg-4">

                    <asp:DropDownList ID="dropMetricArea" OnSelectedIndexChanged="dropMetricArea_SelectedIndexChanged" AppendDataBoundItems="true" CssClass="form-control" AutoPostBack="true" runat="server">
                        <asp:ListItem Text="Choose an Area" />
                    </asp:DropDownList>

                </div>

                <div class="col-lg-4">

                    <asp:DropDownList ID="dropMetric" CssClass="form-control" AppendDataBoundItems="true" runat="server">
                        <asp:ListItem Text="Choose a Metric" />
                    </asp:DropDownList>

                </div>

                <div class="col-lg-4">
                    <asp:Button ID="btnCompare" CssClass="btn btn-primary form-control" runat="server" Text="Report" OnClick="Compare" />
                </div>

                <br />
                <br />
                <div class="text-center">
                    <asp:Label Text="" ForeColor="Red" ID="info" runat="server" />
                </div>
                <br />

                <div class="col-lg-8">
                    <cc1:LineChart ID="LineChart1" runat="server" ChartHeight="400" ChartWidth="600"
                        ChartType="Basic" ChartTitleColor="#0E426C" Visible="False" CategoryAxisLineColor="#D08AD9"
                        ValueAxisLineColor="#D08AD9" BaseLineColor="#A156AB" EnableTheming="True">
                    </cc1:LineChart>
                </div>

                <div class="col-lg-4">

                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>

                            <asp:GridView CssClass="table table-hover table-responsive" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="metricsLists" PageSize="7">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" ItemStyle-BackColor="#FF6800" />
                                    <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" ItemStyle-BackColor="#A0A700" />
                                </Columns>
                                <PagerStyle Font-Bold="True" HorizontalAlign="Center" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="metricsLists" runat="server" ConnectionString="<%$ ConnectionStrings:itmetricConnectionString %>" SelectCommand="SELECT [id], [name], [area] FROM [metric_info]"></asp:SqlDataSource>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>


            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
