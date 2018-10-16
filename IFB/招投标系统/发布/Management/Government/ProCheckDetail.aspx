<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProCheckDetail.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Government.ProCheckDetail" StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -报名审核</title>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <%--<script src="../css/PopupLayer.js" type="text/javascript"></script>--%>
    
    <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>

    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    </script>

    <style type="text/css">
        .tbStyle
        {
        }
        .ldStyle
        {
            font-size: 15px;
            font-weight: bold;
            color: Blue;
        }
        .style1
        {
            height: 16px;
            width: 120px;
            text-align: center;
            font-size: 13px;
            font-weight: bold;
        }
        .style2
        {
            text-align: left;
            font-size: 13px;
            width: 300px;
        }
        #remark
        {
            width: 13%;
            font-size: 13px;
            font-weight: bold;
        }
        .txt_bordercolor
        {
            border: 1px solid Silver;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1200px;">
        <div style="width: 900px; padding-left: 40px; border-top: 20px;">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                <tr>
                    <td style="height: 35px; line-height: 35px;" align="left">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                            Height="13" />
                        &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">项目审核详情</span>
                    </td>
                    <td align="right">
                        <asp:HyperLink ID="HyperLinkReturn" runat="server">返  回</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="width: 900px; padding-left: 50px;">
            <div style="width: 100%;">
                <fieldset>
                    <legend>项目基本要求</legend>
                    <div>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 75px;">
                            <tr>
                                <td class="style1">
                                    项目名称:
                                </td>
                                <td class="style2">
                                    <%--<asp:HyperLink ID="lb_protitle" CssClass="linka" runat="server">HyperLink</asp:HyperLink>--%>
                                    <a href='../../../../ProjectDetails.aspx?proid=<%=projectid %>' rel="facebox">
                                        <asp:Label ID="lb_protitle" runat="server"></asp:Label>
                                    </a>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    企业资质:
                                </td>
                                <td class="style2" style="color: Red;">
                                    <asp:Label ID="lb_pro_ecp" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style1">
                                    经理人资质:
                                </td>
                                <td class="style2" style="color: Red;">
                                    <asp:Label ID="lb_pro_eMcp" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    企业备注:
                                </td>
                                <td class="style2" style="color: Red;" colspan="4">
                                    <span style="font-weight: bold;">[</span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><span
                                        style="font-weight: bold;">]</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </fieldset>
                <br />
                <fieldset>
                    <legend>企业基本信息</legend>
                    <div>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 50px;">
                            <tr>
                                <td class="style1">
                                    企业名称:
                                </td>
                                <td class="style2">
                                    <asp:HyperLink ID="lb_epsename" runat="server">HyperLink</asp:HyperLink>
                                </td>
                                <td class="style1">
                                    企业资质：
                                </td>
                                <td align="left">
                                    <asp:Label ID="lb_epsecp" runat="server"></asp:Label>
                                </td>
                                <td align="left" style="width: 80px;">
                                    <asp:Image ID="Image2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    文件下载：
                                </td>
                                <td class="style2">
                                    <asp:HyperLink ID="hy_loadfile" CssClass="linka" runat="server" Target="_blank">HyperLink</asp:HyperLink>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                            <tr style="height: 15px;">
                                <td colspan="5">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 10%;">
                                    <div class="style1">
                                        项目经理:
                                    </div>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="height: 5px;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:GridView ID="managerinfo" runat="server" Width="100%" SkinID="GridView" AutoGenerateColumns="False"
                                        OnRowDataBound="managerinfo_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="姓名">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="职务">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Position") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="资质">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="HiddenFieldCaptitude" runat="server" Value='<%# Eval("Captitude.Value") %>' />
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Captitude.Name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="职业资格">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("LisenceCp") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="性别">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("sex") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="年龄">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="联系方式">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label11" runat="server" Text='<%# GetCuString(Convert.ToString(Eval("Contact")),10) %>'
                                                        ToolTip='<%# Eval("Contact") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="状态">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image1" runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                            <tr style="height: 15px;">
                                <td colspan="5">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 10%;">
                                    <div class="style1">
                                        项目备注:</div>
                                </td>
                                <td align="left" colspan="4">
                                    <span style="font-weight: bold;">[</span><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label><span
                                        style="font-weight: bold;">]</span>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td colspan="5">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" align="center">
                                    <asp:TextBox ID="txt_remarkinfo" runat="server" n TextMode="MultiLine" Width="99%"
                                        Height="75px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 15px;">
                                <td colspan="5">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="5">
                                    <span class="style1">拒绝理由:</span> <span style="color: Red;">(*拒绝企业时该栏位必填！)</span>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td colspan="5">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:TextBox ID="txt_refuseReason" runat="server" SkinID="TextBox" Height="75px"
                                        Width="99%" Wrap="False" CssClass="txt_bordercolor"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </fieldset>
                <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                    <tr>
                        <td colspan="4" style="height: 10px;">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                            <asp:Button ID="btn_pass" runat="server" Text="通过" SkinID="Button" Width="100px"
                                OnClick="btn_pass_Click" OnClientClick="return confirm('确定该企业通过审核吗?');" />&nbsp&nbsp;
                        </td>
                        <td align="left">
                            &nbsp;&nbsp;
                            <asp:Button ID="btn_refuse" runat="server" Text="拒绝" SkinID="Button" Width="100px"
                                OnClick="btn_refuse_Click" OnClientClick="return confirm('您确实拒绝该企业吗?');" />
                            &nbsp;&nbsp; <span style="font-weight: bold; color: Red;">[</span><asp:Label ID="promptinfo"
                                runat="server" Text="Label" ForeColor="Red"></asp:Label><span style="font-weight: bold;
                                    color: Red;">]</span>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
