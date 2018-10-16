<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProjectAdd.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageProjectAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>新建项目信息</title>
    <script src="../../JS/jquery.js" type="text/javascript"></script>
     <style type="text/css">
        .tdtitle
        {
            padding-left: 20px;
            height: 20px;
            font-size: 13px;
            font-weight: bold;
            text-align: left;
            background-color: #ECECFF;
            vertical-align: middle;
        }
        .tdlabel
        {
            text-align: center;
            width: 160px;
            padding-left: 20px;
            font-size:12px;
        }
        .tdcontact
        {
            width: 200px;
        }
        td
        {
        	padding:10px 0;        	
        }
         .button
        {
        	background:url(../../images/img_nav.PNG) repeat-x;
        	border:1px solid #ccc;
        	width:120px;
        	padding:5px 0;
        	cursor:pointer;
        	color:#fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color:Red;">
        <asp:Literal ID="LiteralTip" runat="server"></asp:Literal></div>
     <div style="padding-left: 45px; width: 1024px;">
        <table style="width: 100%; margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13px"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">新建项目</span>
                </td>
            </tr>
            <tr>
                <td>                                      
                 <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; text-align: left;">
                        <tr>
                            <td class="tdtitle" colspan="2">
                                基本信息
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                项目名称:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxName" runat="server" SkinID="TextBox" MaxLength="200" Width="400px"></asp:TextBox>                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="TextBoxName" SetFocusOnError="True" Font-Size="12px">* 项目名称不能为空!</asp:RequiredFieldValidator>                               
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                项目造价:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCost" runat="server" SkinID="TextBox" MaxLength="10" Width="400px" Wrap="False"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  
                                    ControlToValidate="TextBoxCost" SetFocusOnError="True"  Font-Size="12px">* 项目造价不能为空!</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="TextBoxCost" SetFocusOnError="True" Font-Size="12px" ValidationExpression="^[1-9][0-9]{1,10}$">
                                * 造价只能为整数!
                                </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                               项目详情:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxInfo" runat="server" SkinID="TextBox" MaxLength="300" Width="400px" TextMode="MultiLine" Height="80px" Font-Size="12px"></asp:TextBox>                                
                            </td>
                        </tr>                                      
                      
                        <tr>
                            <td colspan="2" align="left" style="padding-left:250px;">
                                <asp:Button ID="ButtonSave" runat="server" Text="确 定" onclick="ButtonSave_Click" CssClass="button" /> &nbsp;&nbsp;
                                <asp:Button ID="ButtonCancel" runat="server" Text="返回项目列表"  onclick="ButtonCancel_Click"  CssClass="button" CausesValidation="false" />
                            </td>
                        </tr>
                    </table> 
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
