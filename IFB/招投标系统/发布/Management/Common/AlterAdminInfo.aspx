<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterAdminInfo.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Common.AlterAdminInfo" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #outdiv
        {
            margin: 0px auto;
            width: 450px;
            height: 175px;
            text-align: center;
            background: url('../../images/pwd.jpg');
        }
        }
        #innerdiv
        {
            width: 450px;
            height: 175px;
            filter: alpha(Opacity=80);
            -moz-opacity: 0.5;
            opacity: 0.5;
            z-index: 100;
            background-color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; height: 500px;" align="center">
        <div id="outdiv">
            <div id="innerdiv">
                <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 100%;">
                    <tr style="height: 40px;">
                        <td style="width: 75px;">
                        </td>
                        <td style="width: 225px; font-size: 14px; font-weight: bold; color: Green; word-spacing: 100;">
                            管&nbsp;理&nbsp;员&nbsp;信&nbsp;息&nbsp;修&nbsp;改
                        </td>
                        <td style="width: 150px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 75px;">
                            用户名:
                        </td>
                        <td align="center" style="width: 225px;">
                            <asp:TextBox ID="txt_user" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td style="width: 150px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="用户名不能为空!"
                                ControlToValidate="txt_user" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 75px;">
                            邮&nbsp;&nbsp;&nbsp;箱:
                        </td>
                        <td align="center" style="width: 225px;">
                            <asp:TextBox ID="txt_email" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td style="width: 150px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="邮箱不能为空!"
                                ControlToValidate="txt_email" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="邮箱格式不正确!"
                                ControlToValidate="txt_email" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr style="height: 35px;">
                        <td style="width: 75px;">
                        </td>
                        <td style="width: 225px;">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="保  存" Width="100px"
                                SkinID="Button" ToolTip="保 存" />
                        </td>
                        <td style="width: 150px;">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
