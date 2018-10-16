<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs"
    Inherits="JSMSTC.InviteTender.ProjectDetails" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>淮安市清河区小型工程招标网 -公告详情</title>
    <%--<script type="text/javascript" language="javascript">
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
         #top
        {
            height:30px;
            width:800px;
            background-image:url(images/img_index.PNG);
            background-repeat:repeat-x;
        }
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
        .text
        {
            padding-left:45px;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 800px; color: #272727; height: 350px; overflow-x: auto; overflow: scroll">
        <%--<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
            <tbody style=" background-image:url()">
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
        </table>--%>
        <table border="0" cellspacing="0" cellpadding="2" style="padding-left: 10px; padding-right: 10px;"
            width="100%" align="center">
            <tr>
                <td align="center" colspan="4">
                    <b style="font-size: 24px;">
                        <asp:Label ID="LabelTitle" runat="server"></asp:Label></b>
                    <hr style="color: #d9d9d9" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <strong style="color: Blue;">编号:<asp:Label ID="LabelNumber" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        发布时间:<asp:Label ID="LabelPubDate" runat="server"></asp:Label></strong>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 120px;">
                    <strong>行业类型:</strong>
                </td>
                <td style="width: 180px;">
                    <asp:Label ID="LabelCategory" runat="server"></asp:Label>
                </td>
                <td style="width: 120px;">
                    <strong>报名备注:</strong>
                </td>
                <td style="width: 180px;">
                    <asp:Label ID="LabelRemark" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>企业资质要求:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelRct" runat="server"></asp:Label>
                </td>
                <td>
                    <strong>经理人资质要求:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelRmct" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>报名开始日期:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelBeginDate" runat="server"></asp:Label>
                </td>
                <td>
                    <strong>报名截至日期:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelEndDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>标书下载:</strong>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLinkDownLoad" runat="server" Text="下载" Target="_blank"></asp:HyperLink>
                </td>
                <td>
                  <strong>预算价格: </strong>
                </td>
                <td>
                    <asp:Label ID="LabelPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>需求单位:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelRequestUser" runat="server" ></asp:Label>
                </td>
                <td>
                  <strong>项目审核人: </strong>
                </td>
                <td>
                    <asp:Label ID="LabelManager" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <strong>招标内容:</strong>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelContent" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
