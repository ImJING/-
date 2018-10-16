<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs"
    Inherits="JSMSTC.InviteTender.ProjectDetail" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -公告详情</title>

    <script type="text/javascript" language="javascript">
        function ClosePage() {
            parent.closeWindow();
        }

        function changeFontSize(pucl, size) {
            if (pucl.style)
                pucl.style.fontSize = size;
            for (var i = 0; i < pucl.childNodes.length; i++) {
                changeFontSize(pucl.childNodes[i], size)
            }
        } 
    </script>

    <style type="text/css">
        body
        {
            color: #000000;
            font-size: 12px;
            background-color: #00000;
            overflow-y: scroll;
            overflow-x: hidden;
        }
        td
        {
            width: 50%;
            color: #000000;
            font-size: 12px;
            height: 25px;
        }
        th
        {
            color: #000000;
            font-size: 12px;
        }
        .linkbtn
        {
            color: #ff0000;
            font-size: 12px;
            text-decoration: none;
        }
        .linkbtn:hover
        {
            color: #ff0000;
            font-size: 12px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 800px;">
        <table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#ffffff"
            align="center">
            <tbody>
                <tr>
                    <td valign="top">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody>
                                <tr>
                                    <td height="63" valign="bottom" rowspan="2" width="36%">
                                        <div align="center">
                                        </div>
                                    </td>
                                    <td height="30">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" valign="bottom" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody>
                                <tr>
                                    <td bgcolor="#ffffff" height="20">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                            <tbody>
                                <tr>
                                    <td height="54" align="center">
                                        <b style="font-size: 30px;">
                                            <asp:Label ID="LabelTitle" runat="server"></asp:Label></b>
                                        <hr size="3" style="color: #d9d9d9" />
                                    </td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td align="center">
                                        字体大小&nbsp;【<asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'18px');return false;">大</asp:LinkButton>】
                                        &nbsp;【<asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'13px');return false;">中</asp:LinkButton>】
                                        &nbsp;【<asp:LinkButton ID="LinkButton3" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'12px');return false;">小</asp:LinkButton>】&nbsp;
                                        &nbsp;【<asp:LinkButton ID="LinkButton4" runat="server" CssClass="linkbtn" OnClientClick="ClosePage()">关闭窗口</asp:LinkButton>】
                                        &nbsp;【<asp:LinkButton ID="LinkButton5" runat="server" CssClass="linkbtn" OnClientClick="javascript:window.print()">打印</asp:LinkButton>】
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                            <tbody>
                                <tr>
                                    <td valign="top" width="100%">
                                        <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <strong>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            号：</strong><asp:Label ID="LabelNumber" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <strong>发&nbsp;&nbsp; 布&nbsp;&nbsp; 时&nbsp;&nbsp;&nbsp; 间&nbsp;&nbsp; ：</strong><asp:Label
                                                            ID="LabelPubDate" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            业：</strong>
                                                        <asp:Label ID="LabelCategory" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <strong>报&nbsp;&nbsp; 名&nbsp;&nbsp; 备&nbsp;&nbsp;&nbsp; 注&nbsp;&nbsp; ：</strong><asp:Label
                                                            ID="LabelRemark" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>报名开始日期：</strong><asp:Label ID="LabelBeginDate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <strong>报 名 截 至 日 期 :</strong><asp:Label ID="LabelEndDate" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>企业资质要求：</strong><asp:Label ID="LabelRct" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <strong>经理人资质要求：</strong><asp:Label ID="LabelRmct" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>标书下载：</strong><asp:HyperLink ID="HyperLinkDownLoad" runat="server" Text="下载"
                                                            Target="_blank"></asp:HyperLink>
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>招标内容：</strong>
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td id="content" colspan="2">
                                                        <asp:Label ID="LabelContent" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
