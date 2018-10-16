<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterPassword.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Government.AlterPassword" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户密码修改</title>
    <%--<style type="text/css">
        #outdiv
        {
            margin: 0px auto;
            width: 450px;
            height: 300px;
            text-align: center;
            background: url('../../images/pwd.jpg');
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; height: 500px;" align="center">
        <div id="outdiv">
            <table cellpadding="0" cellspacing="0" border="0" style=" background-color:#D9d9d9; width: 400px; height: 175px; margin:20px;">
                <tr style="height: 40px;">
                    <td style="width: 75px;">
                    </td>
                    <td style="width: 225px; font-size: 14px; font-weight: bold; color: Green; word-spacing: 100;">
                        密&nbsp;&nbsp;码&nbsp;&nbsp;修&nbsp;&nbsp;改
                    </td>
                    <td style="width: 150px;">
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 75px;">
                        旧 密 码:
                    </td>
                    <td align="center" style="width: 225px;">
                        <asp:TextBox ID="txt_oldpwd" runat="server" SkinID="TextBox" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="旧密码不能为空!"
                            ControlToValidate="txt_oldpwd" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 75px;">
                        新 密 码:
                    </td>
                    <td align="center" style="width: 225px;">
                        <asp:TextBox ID="txt_newpwd" runat="server" SkinID="TextBox" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_newpwd"
                            ErrorMessage="新密码不能为空!" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 75px;">
                        重复密码:
                    </td>
                    <td align="center" style="width: 225px;">
                        <asp:TextBox ID="txt_repwd" runat="server" SkinID="TextBox" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_repwd"
                            ErrorMessage="密码不能为空!" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpwd"
                            ControlToValidate="txt_repwd" Display="Dynamic" ErrorMessage="两次输入的新密码不一样!"></asp:CompareValidator>
                    </td>
                </tr>
                <tr style="height: 35px;">
                    <td style="width: 75px;">
                    </td>
                    <td style="width: 225px;">
                        <asp:Button ID="Button1" runat="server" Text="保 存" OnClick="Button_Submit_Click"
                            SkinID="Button" Width="50px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="重 置" OnClick="Button_Reset_Click" SkinID="Button"
                            Width="50px" />
                    </td>
                    <td style="width: 150px;">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
