<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EpseList.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Enterprise.ManageEpse"
    StylesheetTheme="HAM1.0" %>
<%@ Import Namespace="JSMSTC.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -企业管理中心</title>
    <script src="../../facebox/jquery.js" type="text/javascript"></script>
    <script src="../../facebox/facebox.js" type="text/javascript"></script>
    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    </script>

    <style type="text/css">
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
        .lab_title
        {
            width: 100px;
            font-size: 13px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1024px; padding-left: 45px;">
        <div>
            <table style="width: 100%; margin-top: 5px;">
                <tr style="height: 50px;">
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13px"
                            Height="13" />
                        &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">企业信息管理</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 55px;">
                            <tr>
                                <td class="lab_title">
                                    <span>企业名称:</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_epsename" runat="server" SkinID="TextBox" Width="200px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                                        <tr>
                                            <td class="lab_title">
                                                审核状态:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="dp_checkstate" runat="server" Width="200px">
                                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                                    <asp:ListItem Value="1">未提交</asp:ListItem>
                                                    <asp:ListItem Value="2">已通过</asp:ListItem>
                                                    <asp:ListItem Value="3">待审核</asp:ListItem>
                                                    <asp:ListItem Value="4">已拒绝</asp:ListItem>
                                                    <asp:ListItem Value="5">已删除</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Button ID="btn_select" Width="100px" runat="server" Text="检    索" OnClick="btn_select_Click"
                                                    SkinID="Button" />
                                                &nbsp;&nbsp;
                                                <asp:Button ID="btn_addnew" runat="server" Width="100px" Text="新建入库" OnClick="btn_addnew_Click"
                                                    SkinID="Button" />
                                                &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 30px;">
                        <hr style="color: Blue; width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grid_epsedetail" runat="server" AutoGenerateColumns="False" SkinID="GridView"
                            OnPageIndexChanging="grid_epsedetail_PageIndexChanging" OnRowDeleting="grid_epsedetail_RowDeleting"
                            OnDataBound="grid_epsedetail_DataBound" OnRowDataBound="grid_epsedetail_RowDataBound"
                            OnRowCommand="grid_epsedetail_RowCommand" Width="1024px">
                            <Columns>
                                <asp:TemplateField HeaderText="企业名称">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" CssClass="link" ToolTip='<%# Eval("UserName") %>' runat="server" NavigateUrl='<%# Eval("Id","EpseView.aspx?EpseId={0}") %>'
                                            Text='<%# StringHandler.CutString( Eval("UserName").ToString(),12) %>'></asp:HyperLink>
                                        <%--<a href='./EpseView.aspx?EpseId=<%# Eval("ID") %>' rel="facebox">
                                            <%# Eval("UserName")%></a>--%>
                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="企业性质">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LabelEpsNature" runat="server" Text='<%# Eval("EPSNature") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="营业执照">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToString(Eval("BsLisenceID"))==""?"无":Eval("BsLisenceID") %>'
                                            ToolTip='<%# Eval("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="审核状态">
                                    <ItemTemplate>
                                        <asp:Label ID="lab_checkstate" runat="server"></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="竞标记录">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link" NavigateUrl='<%# Eval("Id","EpsScoreHistory.aspx?epsid={0}") %>'
                                            ToolTip="查看企业历史评价记录">查看</asp:HyperLink>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="操    作" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="img_checkstate" runat="server" CommandName="Check" CommandArgument='<%# Eval("Id") %>'
                                            ImageUrl="~/Management/images/checkinfo.gif" Height="16px" Width="16px" ToolTip="点击进入审核" />&nbsp;
                                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Management/images/edit.gif"
                                            PostBackUrl='<%# Eval("Id","EditEpse.aspx?epseid={0}") %>' ToolTip="编 辑" />&nbsp;
                                        <asp:ImageButton ID="ImageButtonResetPwd" CommandName="ResetPwd" CommandArgument='<%# Eval("ID") %>' runat="server" ImageUrl="~/Management/images/update.gif"
                                            ToolTip="密码重置" OnClientClick="return confirm('确定要重置密码吗?');" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" Wrap="False" />
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="text-align: center; font-size: 12px; line-height: 45px; height: 45px;
                                    letter-spacing: 2; font-weight: bold; color: Red;">
                                    没有数据!
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="7"
                            PageSize="8" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                            ShowCustomInfoSection="left" FirstPageText="首页" LastPageText="末页" NextPageText="下页"
                            PrevPageText="上页" Font-Names="Arial" ShowInputBox="Always" BackColor="#D5E8F4"
                            SubmitButtonText="跳转" SubmitButtonStyle="botton" OnPageChanged="AspNetPager1_PageChanged"
                            AlwaysShow="True">
                        </webdiyer:AspNetPager>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
