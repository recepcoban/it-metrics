<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOrListMetrics.aspx.cs" Inherits="ITIL.AddOrListMetrics" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add / List Metrics</title>
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="jumbotron text-center">
            <asp:Label Text="ADD / LIST METRICS" Font-Size="XX-Large" Font-Bold="true" runat="server" />
            <asp:Button Text="Go Back" CssClass="pull-right btn btn-danger" PostBackUrl="~/Metrics.aspx" runat="server" />
        </div>

        <div class="container">


            <div class="col-lg-12">

                <asp:GridView ID="GridView1" CssClass="col-lg-12 table table-bordered table-hover table-responsive" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="listOfMetrics">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" ItemStyle-BackColor="#449d44">
                            <ItemStyle BackColor="#449d44"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" ItemStyle-BackColor="#31b0d5">
                            <ItemStyle BackColor="#31b0d5"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="formula" HeaderText="Formula" SortExpression="formula" ItemStyle-BackColor="#ec971f">
                            <ItemStyle BackColor="#ec971f"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Operations" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" OnClientClick="return confirm('Are you sure to delete metric?');" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle Font-Bold="True" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="listOfMetrics" runat="server" ConnectionString="<%$ ConnectionStrings:itmetricConnectionString %>" DeleteCommand="DELETE FROM [metric_info] WHERE [id] = @id" InsertCommand="INSERT INTO [metric_info] ([name], [area], [formula]) VALUES (@name, @area, @formula)" SelectCommand="SELECT * FROM [metric_info]" UpdateCommand="UPDATE [metric_info] SET [name] = @name, [area] = @area, [formula] = @formula WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="formula" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="formula" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>


                <div class="col-lg-3">
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Name" />
                    <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtName" runat="server" ValidationGroup="addmatric" />
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtArea" CssClass="form-control" runat="server" placeholder="Area" />
                    <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtArea" runat="server" ValidationGroup="addmatric" />
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtFormula" CssClass="form-control" TextMode="MultiLine" Rows="3" runat="server" placeholder="Formula" />
                    <asp:RequiredFieldValidator ErrorMessage="Required Value!" ForeColor="Red" ControlToValidate="txtFormula" runat="server" ValidationGroup="addmatric" />
                </div>
                <div class="col-lg-3">
                    <asp:Button Text="Add Metric" CssClass="form-control btn btn-primary" ID="btnAddMetric" OnClick="btnAddMetric_Click" runat="server" ValidationGroup="addmatric" />
                </div>
                <br />
                <div class="clearfix"></div>
                <div class="text-center">
                    <asp:Label Text="" ForeColor="Red" ID="lblAdding" runat="server" />
                </div>


            </div>

        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
