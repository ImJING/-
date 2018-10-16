<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTender.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.ManageTender"
    StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -招标信息管理</title>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />
    <%--<script src="../css/PopupLayer.js" type="text/javascript"></script>--%>
    <style type="text/css">
        body
        {
            font-size: 12px;
        }
        .lab_title
        {
            width: 100px;
            font-size: 13px;
            font-weight: bold;
        }
        .lab_Contact
        {
            width: 200px;
            font-size: 13px;
            font-weight: bold;
        }
    </style>

    <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>

    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1024px; padding-left: 40px;">
        <div>
            <table style="width: 100%; margin-top: 5px;">
                <tr style="height: 50px;">
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                            Height="13" />
                        &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">招标信息管理中心</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                            <tr>
                                <td class="lab_title">
                                    <asp:Label ID="lb_tenderID" runat="server" Text="项目编号:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_tenderID" runat="server" ToolTip="输入标号" SkinID="TextBox" Width="200px"></asp:TextBox>
                                </td>
                                <td class="lab_title">
                                    <asp:Label ID="lb_title" runat="server" Text="项目标题:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_title" runat="server" ToolTip="输入标题" SkinID="TextBox" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td colspan="4">
                                </td>
                            </tr>
                            <tr>
                                <td class="lab_title">
                                    <asp:Label ID="Label2" runat="server" Text="项目审核:"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" SkinID="DropDownList" Width="207px">
                                        <asp:ListItem Value="3" Selected="True">全部</asp:ListItem>
                                        <asp:ListItem Value="1">未审核</asp:ListItem>
                                        <asp:ListItem Value="2">已审核</asp:ListItem>
                                        <asp:ListItem Value="4">未通过</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="lab_title">
                                    <asp:Label ID="lb_state" runat="server" Text="项目状态:"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="drop_state" runat="server" SkinID="DropDownList" Width="207px">
                                        <asp:ListItem Value="3" Selected="True">全部</asp:ListItem>
                                        <asp:ListItem Value="1">进行中</asp:ListItem>
                                        <asp:ListItem Value="0">已结束</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="lab_title">
                                    <asp:Button ID="Button1" runat="server" Text="检索" OnClick="btn_select_Click" SkinID="Button"
                                        ToolTip="检索" Width="120px" />
                                </td>
                                <%--<td>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btn_addtender" runat="server" Text="工程发包" Width="120px" OnClick="btn_addtender_Click"
                                        SkinID="Button" ToolTip="工程发包" />
                                </td>--%>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td>
                        <hr style="color: Blue; width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" SkinID="GridView"
                            OnDataBound="GridView1_DataBound" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"
                            OnRowDeleting="GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="序号">
                                    <ItemTemplate>
                                        <%# (this.AspNetPager1.CurrentPageIndex - 1) * this.AspNetPager1.PageSize + Container.DataItemIndex + 1%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="招标编号">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Number") %>'></asp:Label>
                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="标题">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLinkTitile" runat="server" ToolTip='<%#  Eval("Title") %>' NavigateUrl='<%# Eval("Id","../../../../ProjectDetails.aspx?proid={0}")%>' rel="facebox"><%# JSMSTC.Common.StringHandler.CutString( Eval("Title"),10) %></asp:HyperLink>
                                        <%--<a href='../../../../ProjectDetails.aspx?proid=<%# Eval("Id")%>' rel="facebox">
                                        <asp:Label ID="LabelTitle" ToolTip='<%#  Eval("Title") %>' runat="server"></asp:Label>
                                            <%# JSMSTC.Common.StringHandler.CutString( Eval("Title"),15) %></a>--%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="250px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" 
                                        Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="报名开始日期">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# GetDateStr(Eval("BeginDate")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="报名截止日期">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# GetDateStr(Eval("EndDate")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目审核">
                                    <ItemTemplate>
                                        <asp:HiddenField ID="HiddenFieldVerify" runat="server" Value='<%# Eval("Displaysatat") %>' />
                                        <asp:Label ID="LabelVerify" runat="server"></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="报名企业审核">
                                    <ItemTemplate>
                                        <asp:Label ID="lab_applyinfo" runat="server"></asp:Label>
                                        <%--<asp:HyperLink ID="hy_applyinfo" runat="server"></asp:HyperLink>--%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目状态">
                                    <ItemTemplate>
                                        <asp:Label ID="lab_tenderstate" runat="server" Text='<%# (int)Eval("State")==0?"已结束":"进行中" %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="中标单位">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hy_win" runat="server" CssClass="linka"></asp:HyperLink>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Enterprise.UserName") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="操    作">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="ImageButton2" runat="server" ToolTip="报名企业审核" Text="报名审核" CommandArgument='<%# Eval("Id") %>'
                                            CommandName="IsShow" ImageUrl="~/Management/images/IsShow.gif" />
                                        <%--<asp:ImageButton ID="ImageButton3" runat="server" ToolTip="取消发布" CommandArgument='<%# Eval("Id") %>'
                                            CommandName="IsNotShow" ImageUrl="~/Management/images/IsNotShow.gif" OnClientClick="return confirm('确定要取消发布吗?');" />--%>
                                        <%--<asp:ImageButton ID="ImageButton4" Height="16px" Width="16px" runat="server" CommandArgument='<%# Eval("Id") %>'
                                            ImageUrl="~/Management/images/loginin_icon_2.gif" ToolTip="对中标企业进行评价" />--%>
                                        <asp:LinkButton ID="ImageButton1" runat="server" ToolTip="项目信息审核" Text="项目审核" CommandArgument='<%# Eval("Id") %>'
                                            CommandName="Edit" ImageUrl="~/Management/images/edit.gif" />
                                        <%--<asp:ImageButton ID="imgbtn_delete" runat="server" CommandArgument='<%# Eval("Id") %>'
                                            CommandName="Delete" ImageUrl="~/Management/images/delete.gif" OnClientClick="return confirm('确定要删除吗?');"
                                            ToolTip="删除" />--%>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="text-align: center; font-weight: bold; font-size: 15px; line-height: 45px;
                                    height: 45px; letter-spacing: 2; color: Red;">
                                    没有数据!
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="7"
                            PageSize="7" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
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
