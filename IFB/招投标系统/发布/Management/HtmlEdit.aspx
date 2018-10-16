<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlEdit.aspx.cs" Inherits="JSMSTC.Web.Management.HtmlEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="HTMLEditor" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="min-height: 400px; min-width: 960px">
        <div>
            <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </ajaxToolkit:ToolkitScriptManager>
            <HTMLEditor:Editor runat="server" ID="Editor" Height="400px" Width="800px" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1">
            </ajaxToolkit:CalendarExtender>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Height="400px" Width="800px">
        </FTB:FreeTextBox>
    </div>
    </form>
</body>
</html>
