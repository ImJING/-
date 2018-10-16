<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Enterprise.Complaint"
    StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -投诉建议</title>
    <style type="text/css">
        .td
        {
            width: 100px;
            background-color:#F4F4F4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div style="width: 600px; margin-left: 40px; margin-top: 5px;">
        <table style="width: 100%;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">投诉中心</span>
                </td>
            </tr>
            <tr>
                <td>
                <table width="100%">
                        <tr>
                            <td>
                            <asp:UpdatePanel runat="server" ID="UpdatePanel4">
                            <ContentTemplate>
                            <table width="100%">
                                    <tr>
                                        <td class="td">
                                            反馈类型：
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListType" Width="158px" SkinID="DropDownList" runat="server">
                                                <asp:ListItem Value="1">投诉</asp:ListItem>
                                                <asp:ListItem Value="2">建议</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </td>
                            <td>
                            <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                            <ContentTemplate>
                            <table width="100%">
                                    <tr>
                                        <td class="td">
                                            反馈主题：
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBoxTitle" SkinID="TextBox" Width="150px" runat="server" 
                                                MaxLength="100"></asp:TextBox><span style=" color:Red;">*</span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBoxTitle" Display="None" ErrorMessage="反馈主题不能为空！">！</asp:RequiredFieldValidator>
                                            <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                                runat="server" TargetControlID="RequiredFieldValidator1">
                                            </ajaxToolkit:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                            <ContentTemplate>
                            <table width="100%">
                                    <tr>
                                        <td class="td">
                                            针对项目：
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListProType" Width="158px" SkinID="DropDownList" 
                                                runat="server" 
                                                onselectedindexchanged="DropDownListProType_SelectedIndexChanged" 
                                                AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </td>
                            <td>
                            <asp:UpdatePanel runat="server" ID="UpdatePanel5">
                            <ContentTemplate>
                            <table width="100%">
                                    <tr>
                                        <td class="td">
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListProName" Width="158px" runat="server" 
                                                AutoPostBack="True">
                                                <asp:ListItem Value="0">请选择</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </td>
                        </tr>
                        <%--<tr>
                        <td>
                        <table width="100%">
                        <tr><td class="td"></td><td></td></tr>
                        </table>
                        </td>
                        <td> </td>
                        </tr>--%>
                        <tr>
                            <td colspan="2">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                            <ContentTemplate>
                            

                                <table width="100%">
                                    <tr>
                                        <td class="td">
                                            反馈内容：
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBoxContent" SkinID="TextBox" runat="server" Height="200px" MaxLength="200"
                                                TextMode="MultiLine" Width="450px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ButtonSubmit" SkinID="Button" Width="70px" runat="server" 
                                    Text="提&nbsp;&nbsp;交" onclick="ButtonSubmit_Click" />
                            </td>
                            <td align="left">
                                <asp:Button ID="ButtonReset" SkinID="Button" Width="70px" runat="server" 
                                    Text="重&nbsp;&nbsp;填" CausesValidation="False" 
                                    onclick="ButtonReset_Click" />
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2">
                        <table width="100%" style=" background-color:#F4F4F4">
                        <tr><td style=" background-color:White;"><img alt="" src="../images/arrow_!.gif" /><span style=" color:Red; font-weight:bold; font-family:@Adobe 仿宋 Std R">温馨提醒</span></td></tr>
                        <tr><td>1.带<span style=" color:Red;">*</span>号为必填栏位。</td></tr>
                        <tr><td>2.清河区招标中心不会公开您的信息</td></tr>
                        <tr><td>3.清河区招标中心保留删除恶意投诉的权利。</td></tr>
                        <%--<tr><td>4.如果对处理结果不满意，欢迎拨打投诉电话：0517-</td></tr>--%>
                        </table>
                        </td>
                        </tr>
                    </table>               
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
