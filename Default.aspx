<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        <div>
            <asp:Button ID="button1" Text="Show Report" runat="server" OnClick="button1_Click" />
        </div>
    <div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="80%"></rsweb:ReportViewer>
    </div>
    </form>
</body>
</html>
