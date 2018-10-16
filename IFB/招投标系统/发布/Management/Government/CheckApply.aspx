<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckApply.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.CheckApply"
    StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -报名审核</title>
<%--    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <script src="../css/PopupLayer.js" type="text/javascript"></script>--%>

    <script src="../../JS/JSUtil.js" type="text/javascript"></script>

    <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">

        function AlertBoxSure() {
            if (confirm("确认审核通过已选中？")) {
                return true;
            }
            return false;
        }
        function AlertBoxCancel() {
            if (confirm("确认审核拒绝已选中？")) {
                return true;
            }
            return false;
        }

        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
  
    </script>

</head>
<body scroll="no">
    <form id="form1" runat="server">
    <div style="padding-left: 45px; padding-top: 15px;">
        <div>
            <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td colspan="6">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                            Height="13" />
                        &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">项目报名审核</span>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px;" colspan="6">
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <span style="font-weight: bold;">项目名称：</span>
                        <%-- ID="linkTitle" Target="_blank" runat="server" ToolTip="点击查看项目公告"></asp:HyperLink>--%>
                        <a href='../../ProjectDetails.aspx?proid=<%=Request["proid"]%>' rel="facebox">
                            <asp:Label ID="LabelTitle" runat="server" Text="LabelTitle"></asp:Label>

                        </a>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px;" colspan="6">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelEpsName" runat="server" Text="企业名称："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEpsName" runat="server" SkinID="TextBox" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="LabelState" runat="server" Text="状态："></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListState" runat="server" SkinID="DropDownList" Width="200px">
                            <asp:ListItem Value="3">所有</asp:ListItem>
                            <asp:ListItem Value="0">待审核</asp:ListItem>
                            <asp:ListItem Value="1">已通过</asp:ListItem>
                            <asp:ListItem Value="2">未通过</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="BtnSearch" runat="server" Text="查&nbsp;&nbsp;&nbsp;&nbsp;询" SkinID="Button"
                            OnClick="BtnSearch_Click" Width="100px" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonReturn" Width="100px" runat="server" Text="返回项目管理" SkinID="Button"
                            OnClick="ButtonReturn_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 25px; line-height: 25px; text-align: left;">
                        <hr style="color: Blue; width: 800px;" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" SkinID="GridView"
                            OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="Id"
                            OnRowCancelingEdit="GridView1_RowCancelingEdit" Width="800px">
                            <Columns>
                                <asp:TemplateField Visible="False">
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" onclick='javascript:SelectAll(this);' />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="75px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="75px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="序号">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="企业名称">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLinkEpsName" runat="server" NavigateUrl='<%# Eval("EpsId","EpseView.aspx?EpseId={0}") %>'
                                            Text='<%# Eval("EpsName") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" Width="300px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="所属行业">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="审核状态">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("StateDisplay") %>'></asp:Label>
                                        <asp:HiddenField ID="HiddenFieldState" runat="server" Value='<%# Eval("State") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButtonSure" runat="server" CommandName="Sure" ImageUrl="~/Management/images/checkinfo.gif"
                                            ToolTip="点击进入审核" CommandArgument='<%# Eval("Id") %>' Height="20px" Width="20px" />
                                        <asp:ImageButton ID="ImageButtonCancel" runat="server" CommandName="Cancel" ImageUrl="~/Management/images/delete.gif"
                                            ToolTip="拒 绝" CommandArgument='<%# Eval("Id") %>' Visible="False" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="75px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="75px" />
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="width: 100%; height: 45px; font-size: 14px; color: Red; font-weight: bold;
                                    text-align: center; line-height: 45px;">
                                    没有数据!
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <%--<webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="800px" NumericButtonCount="7"
                            PageSize="7" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                            ShowCustomInfoSection="left" FirstPageText="首页" LastPageText="末页" NextPageText="下页"
                            PrevPageText="上页" Font-Names="Arial" ShowInputBox="Always" BackColor="#D5E8F4"
                            SubmitButtonText="跳转" SubmitButtonStyle="botton" OnPageChanged="AspNetPager1_PageChanged"
                            AlwaysShow="True">
                        </webdiyer:AspNetPager>--%>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px;" colspan="6">
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Button ID="ButtonSureAll" runat="server" Text="批量通过" SkinID="Button" OnClick="ButtonSureAll_Click"
                            OnClientClick=" return AlertBoxSure()" Visible="False" />
                        <asp:Button ID="ButtonCancelAll" runat="server" Text="批量拒绝" SkinID="Button" OnClick="ButtonCancelAll_Click"
                            OnClientClick=" return AlertBoxCancel()" Visible="False" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
