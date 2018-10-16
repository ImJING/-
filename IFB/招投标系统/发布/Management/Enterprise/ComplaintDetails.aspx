<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintDetails.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Enterprise.ComplaintDetails" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>投诉详情界面界面</title>
    <style type="text/css">
        .evenstyle
        {
            background-color: White;
        }
        .oddstyle
        {
            background-color: #ADD2DA;
        }
        .style1
        {
            height: 30px;
        }
        .style2
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 100%; height: 430px;">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 100%;
                font-size: 14px; font-weight: bold;">
                <tr style="height: 20px;">
                    <td colspan="2">
                    </td>
                </tr>
                <tr style="height: 25px;">
                    <td colspan="2">
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 100%;">
                            <tr>
                                <td style="width: 60px;" align="right">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" />
                                </td>
                                <td align="left" style="font-size: 15px; font-weight: bold;">
                                    <span>企业反馈详情</span>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 15px;">
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr class="oddstyle">
                    <td style="width: 175px;" align="center">
                        <div>
                            类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 型:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbtype" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="evenstyle">
                    <td align="center">
                        <div>
                            标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;题:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbtitle" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="oddstyle">
                    <td align="center">
                        <div>
                            提 交 企 业:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbsubmitepse" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="evenstyle">
                    <td align="center">
                        <div>
                            针 对 项 目:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbproject" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="oddstyle">
                    <td align="center" class="style2">
                        <div>
                            提 交 日 期:
                        </div>
                    </td>
                    <td class="style2">
                        <div>
                            <asp:Label ID="lbsubmitdate" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="evenstyle">
                    <td align="center" class="tdstyle">
                        <div>
                            处 理 状 态:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbhandedstate" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="oddstyle">
                    <td align="center">
                        <div>
                            得&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 分:
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:Label ID="lbgrade" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr class="evenstyle">
                    <td align="center">
                        <div>
                            提 交 内 容:
                        </div>
                    </td>
                    <td rowspan="2" valign="top">
                        <br />
                        <div style="width:500px; word-wrap:break-word; overflow:hidden; height:65px;">
                            <asp:Label ID="lbcontent" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr style="height: 75px;" class="evenstyle">
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="color: Blue;" />
                    </td>
                </tr>
                <tr style="line-height: 45px;">
                    <td class="style1">
                    </td>
                    <td class="style1">
                        <asp:Button ID="Button1" runat="server" Text="返  回" SkinID="Button" Width="100px" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
