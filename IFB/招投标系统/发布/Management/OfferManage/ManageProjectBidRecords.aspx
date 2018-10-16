<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProjectBidRecords.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageProjectBidRecords" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>项目中标信息</title>
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
        }
        .tdcontact
        {
            width: 200px;
        }
        td
        {
        	padding:10px 0;
        	font-size:12px;
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
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">项目中标信息</span>
                </td>
            </tr>
            <tr>
                <td>                                      
                 <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; text-align: left;">
                        <tr>
                            <td class="tdtitle" colspan="2">
                                项目基本信息
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                项目名称:
                            </td>
                            <td>
                                <asp:Label ID="LabelProjectName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                项目造价:
                            </td>
                            <td>
                               <asp:Label ID="LabelProjectCost" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                               项目详情:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxProjectInfo" runat="server" SkinID="TextBox" Width="400px" TextMode="MultiLine" Height="80px" ReadOnly="true" Font-Size="12px"></asp:TextBox>                                
                            </td>
                        </tr>                                      
                        <tr>
                            <td class="tdtitle" colspan="2">
                                公司基本信息
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                公司名称:
                            </td>
                            <td>
                                <asp:Label ID="LabelCompanyName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                公司联系人:
                            </td>
                            <td>
                                <asp:Label ID="LabelCompanyContact" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                联系电话:
                            </td>
                            <td>
                                <asp:Label ID="LabelCompanyTel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdlabel">
                                电子邮箱:
                            </td>
                            <td>
                                <asp:Label ID="LabelCompanyEmail" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" style="padding-left:250px;">                                
                                <asp:Button ID="ButtonCancel" runat="server" Text="返回项目列表" CssClass="button" 
                                    CausesValidation="false" onclick="ButtonCancel_Click" />
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
