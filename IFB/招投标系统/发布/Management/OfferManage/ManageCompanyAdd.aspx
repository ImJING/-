<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageCompanyAdd.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageCompanyAdd" StylesheetTheme="HAM1.0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>新建企业信息</title>
    <script src="../../JS/jquery.js" type="text/javascript"></script>
     <style type="text/css">
        .tdtitle
        {
            padding-left: 20px;
            height: 20px;
            font-size: 12px;
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
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">新建企业</span>
                </td>
            </tr>
            <tr>
                <td>                                      
                 <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; text-align: left;">
                        <tr>
                            <td class="tdtitle" colspan="4">
                                基本信息
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                企业名称:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCName" runat="server" SkinID="TextBox" MaxLength="20" Width="200px"></asp:TextBox>                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="企业名称不能为空!"
                                    ControlToValidate="TextBoxCName" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="tdlabel">
                                企业联系人:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCContact" runat="server" SkinID="TextBox" MaxLength="14" Width="200px" Wrap="False"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="企业联系人不能为空!"
                                    ControlToValidate="TextBoxCContact" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                               联系号码:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCTelphone" runat="server" SkinID="TextBox" MaxLength="50" Width="200px"></asp:TextBox>                                
                            </td>
                            <td class="tdlabel">
                                &nbsp;电子邮箱 :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCEmail" runat="server" SkinID="TextBox" MaxLength="50" Width="200px"></asp:TextBox>
                            </td>
                        </tr>                                      
                      
                        <tr>
                            <td colspan="4" align="center">
                                <asp:Button ID="ButtonSave" runat="server" Text="确 定" onclick="ButtonSave_Click" CssClass="button" /> &nbsp;&nbsp;
                                <asp:Button ID="ButtonCancel" runat="server" Text="返回企业列表"  onclick="ButtonCancel_Click"  CssClass="button" CausesValidation="false" />
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
