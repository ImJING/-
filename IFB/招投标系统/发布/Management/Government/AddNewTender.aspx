<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewTender.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.AddNewTender"
    ValidateRequest="false" StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="../../JS/jquery.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function DoReset() {
            document.getElementById("TextBoxPojId").value = "";
            document.getElementById("TextBoxPojTitle").value = "";
            document.getElementById("TextBoxBeginTime").value = "";
            document.getElementById("TextBoxEndTime").value = "";
            document.getElementById("TextBoxContent").value = "";
            document.getElementById("TextBoxPojId").select();
        }
        function CutNum(e) {
            var value = e.value;
            var patrn = /[^\d]/g;
            if (patrn.exec(value)) {
                e.value = value.replace(patrn, '');
            }
        }
    </script>

    <style type="text/css">
        #ButtonReset
        {
            width: 100px;
        }
    </style>
    <title>淮安市清河区小型工程招标网 -公告发布</title>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div style="margin-left: 25px; width: 80%; margin-top: 15px; height: 25px; line-height: 25px;">
        <div style="float: left; width: 30px;" align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Management/images/loginin_icon_1.gif" />
        </div>
        <div style="float: left;">
            <asp:Label ID="LabelPageTitle" runat="server" Text="工程发包" Style="font-size: 14px;
                font-weight: bold;"></asp:Label>
        </div>
        <div style="float: right; color: Gray;">
            <table>
                <tr>
                    <td>
                        带<span style="color: Red;">*</span>号的栏位不能为空
                    </td>
                    <td style="font-size:15px; color:Red; font-weight:bold;">
                        <asp:HyperLink ID="hy_return" runat="server">返   回</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                ShowSummary="False" />
        </div>
    </div>
    <div style="padding-left: 50px; padding-top: 25px;">
        <table>
            <tr>
                <td style="width: 120px;">
                    招标编号：
                </td>
                <td>
                    <span style="color: Red;">*</span>
                    <asp:TextBox ID="TextBoxPojId" runat="server"  SkinID="TextBox" Width="300px" TabIndex="1"
                        MaxLength="15" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPojId"
                        ErrorMessage="中标编号不能为空!" SetFocusOnError="True" Display="None">*</asp:RequiredFieldValidator>
                    <%-- </ContentTemplate>
                    </asp:UpdatePanel>--%>
                    <span style="font-size: 12px; color: Gray;">请填写招标编号不可重复</span>
                </td>
            </tr>
            <tr>
                <td>
                    招标信息标题：
                </td>
                <td>
                    <span style="color: Red;">*</span>
                    <asp:TextBox ID="TextBoxPojTitle" runat="server"  SkinID="TextBox" Width="300px" TabIndex="2"
                        MaxLength="45"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="招标信息标题不能为空！"
                        ControlToValidate="TextBoxPojTitle" SetFocusOnError="True" Display="None">*</asp:RequiredFieldValidator>
                    <span style="font-size: 12px; color: Gray;">请填写标题四十个字以内</span>
                </td>
            </tr>
            <tr>
                <td>
                    项目类型：
                </td>
                <td>
                    <span style="color: Red;">*</span>
                    <asp:DropDownList ID="DropDownListCategory"  runat="server" SkinID="DropDownList"
                        TabIndex="3" Width="307px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListCategory"
                        ErrorMessage="项目类型不能为空!" SetFocusOnError="True" Display="None">*</asp:RequiredFieldValidator>
                    <span style="font-size: 12px; color: Gray;">请选择报名要求的企业类型</span>
                </td>
            </tr>
            <tr>
                <td>
                    企业资质要求：
                </td>
                <td>
                    <span style="color: Red;">*</span>
                    <asp:DropDownList ID="DropDownListCaptitude"  runat="server" SkinID="DropDownList"
                        TabIndex="4" Width="307px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListCaptitude"
                        ErrorMessage="企业资质不能为空!" SetFocusOnError="True" Display="None">*</asp:RequiredFieldValidator>
                    <span style="font-size: 12px; color: Gray;">请选择报名要求的最低资质</span>
                </td>
            </tr>
            <tr>
                <td>
                    经理人资质要求：
                </td>
                <td>
                    <span style="color: Red;">*</span>
                    <asp:DropDownList ID="DropDownListMCaptitude"  runat="server" SkinID="DropDownList"
                        TabIndex="5" Width="307px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListMCaptitude"
                        ErrorMessage="经理人资质不能为空!" SetFocusOnError="True" Display="None">*</asp:RequiredFieldValidator>
                    <span style="font-size: 12px; color: Gray;">请选择报名要求的最低经理资质</span>
                </td>
            </tr>
            <tr>
                <td>
                    报名备注要求：
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxRemarks"  TabIndex="6" MaxLength="100" runat="server"
                        SkinID="TextBox" Width="300px"></asp:TextBox>
                    <span style="font-size: 12px; color: Gray;">请填写要求企业另外提供的资料或说明</span>
                </td>
            </tr>
            <tr>
            <td>
               预算价格：
            </td>
            <td>
             &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxPrice"  TabIndex="6" MaxLength="100" runat="server"
                       SkinID="TextBox" Width="300px"></asp:TextBox>￥
                          <span style="font-size: 12px; color: Gray;"> 请填写预算价格</span>
            </td>
            
            </tr>
            <tr>
                <td>
                    报名时间：
                </td>
                <td>
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td align="left">
                                <span style="color: Red;">*</span>
                                <asp:TextBox ID="TextBoxBeginTime"  runat="server" SkinID="TextBox" Width="135px"
                                    TabIndex="7"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="TextBoxBeginTime" ID="RequiredFieldValidator6"
                                    runat="server" ErrorMessage="报名时间不能为空！" Display="None">*</asp:RequiredFieldValidator>
                                <ajaxToolkit:CalendarExtender ID="TextBoxBeginTime_CalendarExtender" runat="server"
                                    TargetControlID="TextBoxBeginTime" Format="yyyy-MM-dd">
                                </ajaxToolkit:CalendarExtender>
                            </td>
                            <td>
                                <asp:DropDownList ID="dp_bhour"  runat="server" Height="20px" Width="50px" SkinID="DropDownList"
                                    TabIndex="8">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 45px;" align="center">
                                时
                            </td>
                            <td>
                                <asp:DropDownList ID="dp_bminute"  runat="server" Height="20px" Width="50px" SkinID="DropDownList"
                                    TabIndex="9">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 35px;" align="right">
                                分
                            </td>
                            <td style="width: 25px;" align="center">
                                ~
                            </td>
                            <td>
                                <span style="color: Red;">*</span>
                                <asp:TextBox ID="TextBoxEndTime"  runat="server" TabIndex="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="TextBoxEndTime" ID="RequiredFieldValidator7"
                                    runat="server" ErrorMessage="报名时间不能为空！" Display="None">*</asp:RequiredFieldValidator>
                                <ajaxToolkit:CalendarExtender ID="TextBoxEndTime_CalendarExtender" runat="server"
                                    TargetControlID="TextBoxEndTime" Format="yyyy-MM-dd" />
                            </td>
                            <td>
                                <asp:DropDownList ID="dp_ehour"  runat="server" Height="20px" Width="50px" SkinID="DropDownList"
                                    TabIndex="11">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 45px;" align="center">
                                时
                            </td>
                            <td>
                                <asp:DropDownList ID="dp_emintue"  runat="server" Height="20px" Width="50px" SkinID="DropDownList"
                                    TabIndex="12">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 45px;" align="center">
                                分
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxEndTime"
                                    ControlToValidate="TextBoxBeginTime" ErrorMessage="结束日期必须大于开始日期！" Operator="LessThan"
                                    Type="Date" Display="None" SetFocusOnError="True">*</asp:CompareValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxBeginTime"
                                    Display="None" ErrorMessage="开始日期格式错误！" ValidationExpression="([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))"
                                    SetFocusOnError="True">*</asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEndTime"
                                    Display="None" ErrorMessage="结束日期格式错误！" ValidationExpression="([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    发包文件上传：
                </td>
                <td>
                    <%--            <asp:UpdatePanel ID="updatepanel" runat="server">
                        <ContentTemplate>--%>
                    &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" TabIndex="13" />
                    &nbsp;<asp:HyperLink ID="HyperLinkUploadName" runat="server" Visible="False" Font-Underline="True"
                        ForeColor="Blue">HyperLink</asp:HyperLink>
                    &nbsp;<asp:LinkButton ID="LinkButtonUpload"  runat="server" CausesValidation="False"
                        TabIndex="14" CommandName="display" ForeColor="Blue" OnClick="LinkButtonUpload_Click"
                        ToolTip="没有文件" Visible="False" Text="<img src='../images/IsNotActive.gif' border='0' />"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButtonDelFile"  runat="server" OnClick="LinkButtonDelFile_Click"
                        OnClientClick="return confirm('确认删除发包文件？')" Visible="False" CausesValidation="False"
                        ForeColor="Blue" Text="<img src='../images/delete.gif'border='0' />"></asp:LinkButton>
                    &nbsp;
                    <asp:Label ID="LabelMes" runat="server" Text="上传文件后缀要求为：.doc,.xls,.ppt,.rar,.7z等格式"></asp:Label>
                    <%--             </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr style="height: 20px;">
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    招投标信息详情：
                </td>
            </tr>
            <tr>
                <td colspan="2" style="word-wrap: break-word;">
                    <FTB:FreeTextBox ID="TextBoxContent" runat="server" HtmlModeDefaultsToMonoSpaceFont="True"
                        Width="800px" TabIndex="16" BreakMode="LineBreak" ButtonSet="OfficeXP">
                    </FTB:FreeTextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonSubmit" Text="提    交" SkinID="Button" runat="server" 
                                    Width="100px"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="IsOk" runat="server" Checked="false" ForeColor="#00CCFF" Text="通过审核" />
                            </td>
                            <td>
                                <span style="font-size: 12px; color: Gray;">通过审核后将立即在前台发布</span>
                                <%--                                <input id="ButtonReset" type="button" value="重    置" style="background-color: White;
                                    border-color: #99ACDD;" visible="false" onclick="DoReset()" />--%>
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
