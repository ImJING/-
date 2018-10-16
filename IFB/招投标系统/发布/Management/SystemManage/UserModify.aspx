<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserModify.aspx.cs" Inherits="JSMSTC.InviteTender.Management.SystemManage.UserModify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .tdList table
        {
        	margin-top:5px!important;
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
                            人&nbsp;员&nbsp;&nbsp;信&nbsp;息&nbsp;修&nbsp;改
                        </td>
                        <td style="width: 150px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 75px;">
                            用户名:
                        </td>
                        <td align="center" style="width: 225px;">
                            <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label> 
                        </td>
                        <td style="width: 150px;">
                            
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 75px;">
                            部&nbsp;&nbsp;&nbsp;门:
                        </td>
                        <td align="center" style="width: 225px;">
                          
                            <asp:DropDownList ID="DropDownListDepartMent" runat="server" 
                                SkinID="DropDownList" Width="200px">
                            </asp:DropDownList>
                          
                        </td>
                        <td style="width: 150px;">
                         
                        </td>
                    </tr>
                    <tr style="height: 35px;">
                        <td style="width: 75px;">
                        </td>
                        <td style="width: 225px;">
                            <asp:Button ID="ButtonSave" runat="server"  Text="保  存" Width="100px"
                                SkinID="Button" ToolTip="保 存" onclick="ButtonSave_Click" />
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
