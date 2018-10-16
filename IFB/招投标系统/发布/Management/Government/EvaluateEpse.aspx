<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluateEpse.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.EvaluateEpse"
    StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -企业评价</title>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <script src="../css/PopupLayer.js" type="text/javascript"></script>
    <script src="../../JS/jquery.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        function DoReturn() {
            if (confirm("未保存评价将会丢失，确定返回项目管理？")) {
                return true;
            }
            return false;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1000px;">
        <table style="width: 90%; margin-left: 40px; margin-top: 5px;">
            <tr style="height: 50px;">
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />&nbsp;&nbsp;<span style="font-size: 15px; font-weight: bolder;">项目完成评价</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink CssClass="link" ID="HyperLinkOverEval" runat="server" Font-Bold="True"
                        Font-Overline="False" Font-Underline="True" ForeColor="#0033CC" Visible="false"></asp:HyperLink>
                </td>
            </tr>
            <tr style="width: 300px; height: 30px;">
                <td>
                    <span style="font-size: 13px; font-weight: bold">项目名称：</span><asp:HyperLink ID="LinkProTitle"
                        CssClass="linka" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td>
                    <span style="font-size: 13px; font-weight: bold">中标企业：</span><asp:HyperLink ID="LinkEpsName"
                        CssClass="link" runat="server">HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr style="width: 300px; height: 30px;">
                <td>
                    <span style="font-size: 13px; font-weight: bold">项目类型：</span><asp:Label ID="labelCategory"
                        runat="server" Text="类型"></asp:Label>
                </td>
                <td>
                    <span style="font-size: 13px; font-weight: bold">项目编号：</span><asp:Label ID="labelNum"
                        runat="server" Text="编号"></asp:Label>
                </td>
            </tr>
            <tr style="height: 30px;">
                <td colspan="2">
                    <span style="font-size: 13px; font-weight: bold">评价：</span>
                </td>
            </tr>
            <tr style="height: 30px;">
                <td style="width: 50%;">
                    <table width="100%">
                        <tr>
                            <td style="width: 50%;">
                                <span>工程时间评价：&nbsp;</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListTimeEva" runat="server" Width="150px" Font-Size="13px"
                                    SkinID="DropDownList">
                                    <asp:ListItem Value="1">按期完成</asp:ListItem>
                                    <asp:ListItem Value="2">不可抗力原因延期</asp:ListItem>
                                    <asp:ListItem Value="3">自身原因延期</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table width="100%">
                        <tr>
                            <td style="width: 50%;">
                                <span>工程质量评价：&nbsp;</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListQualit" runat="server" SkinID="DropDownList" Width="150px">
                                    <asp:ListItem Value="1">合格</asp:ListItem>
                                    <asp:ListItem Value="2">基本合格</asp:ListItem>
                                    <asp:ListItem Value="3">不合格</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 30px;">
                <td>
                    <table width="100%">
                        <tr>
                            <td style="width: 50%;">
                                <span>项目经理业务能力：&nbsp;</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListAbility" runat="server" SkinID="DropDownList" Width="150px">
                                    <asp:ListItem Value="1">优</asp:ListItem>
                                    <asp:ListItem Value="2">良</asp:ListItem>
                                    <asp:ListItem Value="3">差</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table width="100%">
                        <tr>
                            <td style="width: 50%;">
                                <span>项目经理履约情况：&nbsp;</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListPromise" runat="server" SkinID="DropDownList" Width="150px">
                                    <asp:ListItem Value="1">优</asp:ListItem>
                                    <asp:ListItem Value="2">良</asp:ListItem>
                                    <asp:ListItem Value="3">差</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%">
                        <tr>
                            <td style="width: 50%">
                                <span>项目经理及主要技术负责人在位率：&nbsp;</span>
                            </td>
                            <td>
                                <asp:TextBox ID="TextReignRate" runat="server" SkinID="TextBox" Width="150px"></asp:TextBox>%
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <%--<span style="font-size: 10px; color: Green;">(填写百分百数值即可)</span>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextReignRate"
                        ErrorMessage="在位率不能为空!">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextReignRate"
                        ErrorMessage="在位率范围为[0~100]！" ValidationExpression="^\+?0*(?:100(\.0*)?|(\d{0,2}(  ?=\.\d)|\d{1,2}(?=($|\.$)))(\.\d*)?)$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <span>其他非法行为：</span><asp:CheckBox ID="NoOther" runat="server" Text="无" OnCheckedChanged="NoOther_CheckedChanged"
                        AutoPostBack="True" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="275px">
                        <asp:ListItem Value="1">弄虚作假</asp:ListItem>
                        <asp:ListItem Value="2">围标串标</asp:ListItem>
                        <asp:ListItem Value="3">行贿</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem Value="4">出借资质</asp:ListItem>
                        <asp:ListItem Value="5">非法转包</asp:ListItem>
                        <asp:ListItem Value="6">挂靠</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;<asp:CheckBox ID="CheckBoxOther" runat="server" Text="其他违规(请填写)" AutoPostBack="True"
                        OnCheckedChanged="CheckBoxOther_CheckedChanged" />
                </td>
                <td>
                    <asp:TextBox ID="TextBoxOther" runat="server" Visible="False" MaxLength="50" SkinID="TextBox"></asp:TextBox>
                </td>
            </tr>
            <%--            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="是否加入黑名单"></asp:Label><asp:RadioButton
                        ID="RadioButtonNo" runat="server" Checked="True" GroupName="1" Text="否" />
                    <asp:RadioButton ID="RadioButtonYes" runat="server" GroupName="1" Text="是"/>
                </td>
                <td>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="提    交" SkinID="Button" OnClick="BtnSubmit_Click1" />
                </td>
                <td>
                    <asp:Button ID="ButtonReturn" runat="server" Text="返    回" SkinID="Button" OnClientClick="return DoReturn()"
                        CausesValidation="False" OnClick="ButtonReturn_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
        ShowSummary="False" />
    </form>
</body>
</html>
