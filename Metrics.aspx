<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Metrics.aspx.cs" Inherits="ITIL.Metrics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Metrics</title>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <div class="jumbotron text-center">
            <asp:Label Font-Size="XX-Large" Font-Bold="true" runat="server">METRICS DB OPERATIONS</asp:Label>
             <asp:Button Text="Go Back" CssClass="pull-right btn btn-danger" PostBackUrl="~/Default.aspx" runat="server" />
        </div>

        <div class="container">


            <div class="col-lg-12">

                <asp:UpdatePanel runat="server">
                    <ContentTemplate>

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
                            <asp:Button Text="Add / List Metrics" PostBackUrl="~/AddOrListMetrics.aspx" CssClass="btn btn-primary form-control" runat="server" />
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>

                <br />
                <br />
                <br />

                <table class="table table-hover table-bordered table-responsive">
                    <tr>
                        <th></th>
                        <th>January</th>
                        <th>February</th>
                        <th>March</th>
                        <th>April</th>
                        <th>May</th>
                        <th>June</th>
                        <th>July</th>
                        <th>August</th>
                        <th>September</th>
                        <th>October</th>
                        <th>November</th>
                        <th>December</th>
                    </tr>
                    <tr>
                        <td>Target</td>
                        <td>
                            <asp:TextBox ID="txtT1" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT1" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT2" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT2" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT3" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT3" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT4" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT4" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT5" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT5" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT6" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT6" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT7" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT7" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT8" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT8" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT9" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT9" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT10" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT10" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT11" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT11" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtT12" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtT12" runat="server" ValidationGroup="metrics" />
                        </td>
                    </tr>
                    <tr>
                        <td>Actual</td>
                        <td>
                            <asp:TextBox ID="txtA1" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA1" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA2" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA2" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA3" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA3" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA4" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA4" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA5" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA5" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA6" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA6" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA7" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA7" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA8" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA8" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA9" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA9" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA10" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA10" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA11" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA11" runat="server" ValidationGroup="metrics" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtA12" CssClass="textbox" runat="server" />
                            <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtA12" runat="server" ValidationGroup="metrics" />
                        </td>
                    </tr>
                </table>


                <div class="text-center">
                    <div class="col-lg-4 col-lg-offset-2">
                        <asp:Button Text="Add Info" ID="btnAddInfo" OnClick="btnAddInfo_Click" CssClass="btn btn-success form-control" runat="server" ValidationGroup="metrics" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button Text="Cancel" ID="btnCancel" OnClick="btnCancel_Click" CssClass="btn btn-danger form-control" runat="server" />
                    </div>
                    <br />
                    <br />
                    <asp:Label Text="" ID="lblInfo" ForeColor="Red" Font-Bold="true" runat="server" />
                </div>

            </div>

        </div>
    </form>
</body>
</html>
