<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterpriseUserManager(Delete).aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Enterprise.EnterpriseUserManager" StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -企业管理中心(已删除)</title>

    <script src="../../JS/JSUtil.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function DoDelete() {
            if (confirm("确定要删除吗？")) {
                return true;
            }
            return false;
        }
    </script>

    <style type="text/css">
        span
        {
            font-size: 13px;
        }
        tr
        {
            height: 30px;
        }
        .link
        {
            color: Blue;
            text-decoration: none;
        }
        .link:hover
        {
            text-decoration: underline;
            color: Red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div style="width: 1000px;">
        <table style="width: 90%; margin-left: 40px; margin-top: 5px;">
            <tr style="height: 50px; font-weight: bold;">
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<asp:Label ID="LabelTitle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 1px">
                    <table style="padding: 2px; margin: 2px; width: 98%" align="center" cellspacing="0"
                        cellpadding="0">
                        <tr>
                            <td style="height: 70px; padding-left: 12px;">
                                <table style="height: 20px; width: 100%">
                                    <tr>
                                        <td>
                                            项目名称:
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxPojTitle" SkinID="TextBox" Width="200px" TabIndex="1"></asp:TextBox>
                                        </td>
                                        <td>
                                            报名状态:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListApplState" runat="server" SkinID="DropDownList"
                                                TabIndex="3" Width="210px">
                                                <asp:ListItem Value="2">所有</asp:ListItem>
                                                <asp:ListItem Value="1">已报名</asp:ListItem>
                                                <asp:ListItem Value="0">未报名</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="BtnSearch" SkinID="Button" Text="查    询" Width="100px"
                                                OnClick="BtnSearch_Click" TabIndex="4" />
                                        </td>
                                        <td style="width:100px;">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 98%" align="center" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <img alt="" src="../images/dot25.gif" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LabelTableHead" runat="server" TabIndex="6"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td colspan="" align="right">
                                            <asp:LinkButton ID="LinkButtonReturn" CssClass="link" runat="server" OnClick="LinkButtonReturn_Click"
                                                ToolTip="点击返回项目列表" Visible="False" TabIndex="7">返回项目列表</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButtonRecyle" ToolTip="点击查看已隐藏的项目" runat="server" CssClass="link"
                                                OnClick="LinkButton1_Click" TabIndex="8">项目回收站</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="尚无对贵公司授权的项目！"
                                                SkinID="GridView" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand"
                                                DataKeyNames="EmPowerId" TabIndex="9">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>
                                                            <asp:CheckBox ID="CheckBox2" runat="server" ToolTip="全选" onclick='javascript:SelectAll(this);' />
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="序号">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label6" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="项目编号">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%#  Eval("Number") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="项目名称">
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link" Text='<%# GetCutString(Eval("PojName").ToString(),10) %>'
                                                                Target="_blank" NavigateUrl='<%# Eval("Id","../../ProjectDetail.aspx?proid={0}") %>'></asp:HyperLink>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名状态">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DisPlayAppStatus") %>'></asp:Label>
                                                            <asp:HiddenField ID="HiddenFieldAppState" runat="server" Value='<%# Eval("AppStatus") %>' />
                                                            <asp:HiddenField ID="HiddenFieldIsApply" runat="server" Value='<%# Eval("IsApply") %>' />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="项目状态">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("DisPlayPojStatus") %>'></asp:Label>
                                                            <asp:HiddenField ID="HiddenFieldPojState" runat="server" Value='<%# Eval("pojStatus") %>' />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名开始日期">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("BeninDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名截止日期">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("EndDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="文件下载">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" Height="17px" ImageUrl="~/Management/images/logo.GIF"
                                                                Width="21px" />
                                                            <asp:HyperLink ID="HyperLinkDownLoad" runat="server" NavigateUrl='<%# Eval("FilePath") %>'
                                                                ToolTip="下载项目文件包" Target="_blank">下载</asp:HyperLink>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="操作">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ImageButtonApply" runat="server" ImageUrl="~/Management/images/apply.gif"
                                                                ToolTip="报名" CommandArgument='<%# Eval("EmPowerId") %>' CommandName="Apply" Visible="False" />
                                                            <asp:ImageButton ID="ImageButtonCancel" runat="server" ImageUrl="~/Management/images/Notapply.gif"
                                                                ToolTip="退出报名" CommandArgument='<%# Eval("EmPowerId") %>' CommandName="CancelApply"
                                                                Visible="False" />
                                                            <asp:ImageButton ID="ImageButtonReduction" runat="server" ImageUrl="~/Management/images/Reduction.gif"
                                                                ToolTip="还原项目" CommandArgument='<%# Eval("EmPowerId") %>' CommandName="Reduction"
                                                                Visible="False" />
                                                            <asp:ImageButton ID="ImageButtonRemove" runat="server" ImageUrl="~/Management/images/remove.gif"
                                                                ToolTip="放入回收站" CommandArgument='<%# Eval("EmPowerId") %>' CommandName="Remove"
                                                                Visible="False" />
                                                            <asp:ImageButton ID="ImageButtonDelete" runat="server" CommandArgument='<%# Eval("EmPowerId") %>'
                                                                CommandName="Del" ImageUrl="~/Management/images/delete.gif" ToolTip="彻底删除" Visible="False" />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="7"
                                                PageSize="7" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                                                ShowCustomInfoSection="left" FirstPageText="首页" LastPageText="末页" NextPageText="下页"
                                                PrevPageText="上页" Font-Names="Arial" ShowInputBox="Always" BackColor="#D5E8F4"
                                                SubmitButtonText="跳转" SubmitButtonStyle="botton" OnPageChanged="AspNetPager1_PageChanged"
                                                AlwaysShow="True">
                                            </webdiyer:AspNetPager>
                                        </td>
                                    </tr>
                                    <tr style="height: 20px;">
                                        <td align="right" colspan="3">
                                            <asp:Button ID="ButtonCancelAll" runat="server" Text="删除选中" SkinID="Button" OnClientClick=" return DoDelete()"
                                                OnClick="ButtonCancelAll_Click" TabIndex="10" />
                                            <asp:Button ID="ButtonReduction" runat="server" Text="还原选中" SkinID="Button" OnClick="ButtonReduction_Click"
                                                Visible="False" TabIndex="11" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
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
