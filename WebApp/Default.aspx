<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sensor Management</h1>
        <p class="lead">Where your input data is.</p>
        < class="lead">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SensorId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="569px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="SensorId" HeaderText="SensorId" ReadOnly="True" SortExpression="SensorId" />
                    <asp:BoundField DataField="SensorType" HeaderText="SensorType" SortExpression="SensorType" />
                    <asp:BoundField DataField="SensorActivation" HeaderText="SensorActivation" SortExpression="SensorActivation" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hazmat22ConnectionString1 %>" DeleteCommand="DELETE FROM [Table2] WHERE [SensorId] = @SensorId" InsertCommand="INSERT INTO [Table2] ([SensorId], [SensorType]) VALUES (@SensorId, @SensorType)" ProviderName="<%$ ConnectionStrings:Hazmat22ConnectionString1.ProviderName %>" SelectCommand="SELECT [SensorId], [SensorType], [SensorActivation] FROM [Table2]" UpdateCommand="UPDATE [Table2] SET [SensorType] = @SensorType WHERE [SensorId] = @SensorId">
                <DeleteParameters>
                    <asp:Parameter Name="SensorId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SensorId" Type="Int32" />
                    <asp:Parameter Name="SensorType" Type="String" />
                    <asp:Parameter Name="SensorActivation" Type="Char" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SensorType" Type="String" />
                    <asp:Parameter Name="SensorId" Type="Int32" />
                    <asp:Parameter Name="SensorActivation" Type="Char" />
                </UpdateParameters>
            </asp:SqlDataSource>
        &nbsp;</p>
        <p>
            <a href="http://www.asp.net" class="btn btn-primary btn-lg">&nbsp;&raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Manual Submission</h2>
            <p>
                You will manually input data here
            </p>
            
        </div>
            <h2>Logs</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemLog" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="304px">
                    <Columns>
                        <asp:BoundField DataField="ItemLog" HeaderText="ItemLog" ReadOnly="True" SortExpression="ItemLog" />
                        <asp:BoundField DataField="TimeStamp" HeaderText="TimeStamp" SortExpression="TimeStamp" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hazmat22ConnectionString1 %>" DeleteCommand="DELETE FROM [Table3] WHERE [ItemLog] = @ItemLog" InsertCommand="INSERT INTO [Table3] ([ItemLog]) VALUES (@ItemLog)" ProviderName="<%$ ConnectionStrings:Hazmat22ConnectionString1.ProviderName %>" SelectCommand="SELECT [ItemLog], [TimeStamp] FROM [Table3]">
                    <DeleteParameters>
                        <asp:Parameter Name="ItemLog" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ItemLog" Type="String" />
                        <asp:Parameter Name="TimeStamp" Type="Char" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
