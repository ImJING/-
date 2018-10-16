<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterpriseManager.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Enterprise.EnterpriseManager" StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>淮安市清河区小型工程招标网 -企业管理中心</title>

    <script src="../../JS/JSUtil.js" type="text/javascript"></script>

    <%--<link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <script src="../css/PopupLayer.js" type="text/javascript"></script>--%>

    <script type="text/javascript" language="javascript">
        var isIe = (document.all) ? true : false;
        function DoAlert() {
            alert("现在不是该项目的报名时间！");
            return false;
        }
    </script>

    <%-- <style type="text/css">
        span
        {
            font-size: 13px;
        }
        tr
        {
            height: 30px;
        }
        .labelappstate
        {
            cursor: default;
            color: #41519A;
        }
    </style>--%>

    <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>

    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    </script>

    <style type="text/css">
        .tdList table
        {
            margin-top: 5px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div style="width: 1000px;">
        <table class="tdList" style="width: 90%; margin-left: 40px; margin-top: 5px;" cellpadding="0" cellspacing="0">
            <tr style="height: 50px; font-weight: bold;">
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<asp:Label ID="LabelTitle" runat="server"></asp:Label>
                </td>
                <td align="right">
                    <span style="color: Red;">*</span><span style="color: red; font-size: 12px; font-weight: normal;">
                        FAQ:鼠标指向“已拒绝”可以查看拒绝原因。请根据拒绝原因,点击退出报名,重新报名。</span>
                </td>
            </tr>
            <tr>
                <td  style="height: 1px;" colspan="2">
                    <table style="padding: 2px; margin: 2px; width: 98%" align="center" cellspacing="0"
                        cellpadding="0">
                        <tr>
                            <td style="height: 70px; padding-left: 12px;">
                                <table width="100%">
                                    <tr>
                                        <td style="width: 80px;">
                                            <asp:Label ID="lb_tenderID" runat="server" Text="项目类型:"></asp:Label>
                                        </td>
                                        <td style="width: 200px;" align="left">
                                            <asp:DropDownList ID="DropDownListPojType" runat="server" SkinID="DropDownList" Width="207px">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 100px;" align="center">
                                            <asp:Label ID="lb_title" runat="server" Text="项目标题:"></asp:Label>
                                        </td>
                                        <td style="width: 200px;" align="left">
                                            <asp:TextBox ID="TextBoxTitle" runat="server" ToolTip="输入标题" SkinID="TextBox" Width="200px"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lb_state" runat="server" Text="项目状态:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListState" runat="server" SkinID="DropDownList" Width="207px">
                                                <asp:ListItem Value="3" Selected="True">全部</asp:ListItem>
                                                <asp:ListItem Value="0">已结束</asp:ListItem>
                                                <asp:ListItem Value="1">进行中</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" Text="检    索" OnClick="Button1_Click" SkinID="Button"
                                                ToolTip="检索" Width="120px" />
                                            &nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 98%" align="center" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td colspan="3">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="尚无对贵公司授权的项目！"
                                                SkinID="GridView" Width="1000" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand"
                                                DataKeyNames="Id" TabIndex="9">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label6" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterStyle HorizontalAlign="Justify" />
                                                        <HeaderStyle Width="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="项目名称">
                                                        <ItemTemplate>
                                                            <%--   <asp:HyperLink ID="HyperLinkTitle" runat="server" CssClass="linka" Text='<%# Eval("Title") %>'--%>
                                                            <%-- Target="_blank" onclick='<%# String.Format("Populayer({0});",Eval("Id"))%>'></asp:HyperLink>--%>
                                                            <%--<a href="#" onclick='window.open("../../../../ProjectDetails.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                                            <%# Eval("Title") %></a>--%>
                                                            <a href='../../../../ProjectDetails.aspx?proid=<%# Eval("ID") %>' rel="facebox">
                                                                <%# Eval("Title") %></a>
                                                            <asp:HiddenField runat="server" ID="HiddenId" Value='<%#Eval("Id") %>' />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="项目状态">
                                                        <ItemTemplate>
                                                            <asp:Label ID="LabelState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名状态">
                                                        <ItemTemplate>
                                                            <asp:Label ID="LabelApplyState" CssClass="labelappstate" runat="server" Text="报名状态"></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名开始日期">
                                                        <ItemTemplate>
                                                            <asp:Label ID="LabelBegDate" runat="server" Text='<%# Eval("BeginDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="报名截止日期">
                                                        <ItemTemplate>
                                                            <asp:Label ID="LabelEndDate" runat="server" Text='<%# Eval("EndDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="标书下载">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" Height="17px" ImageUrl="~/Management/images/logo.GIF"
                                                                Width="21px" />
                                                            <asp:HyperLink ID="HyperLinkDownLoad" runat="server" NavigateUrl='<%# Eval("UpLoadString") %>'
                                                                ToolTip="下载项目文件包" Target="_blank">下载</asp:HyperLink>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="操作">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ImageButtonApply" runat="server" ImageUrl="~/Management/images/apply.gif"
                                                                ToolTip="报名" CommandArgument='<%# Eval("Id") %>' CommandName="Apply" />
                                                            <asp:ImageButton ID="ImageButtonCancel" runat="server" ImageUrl="~/Management/images/Notapply.gif"
                                                                ToolTip="退出报名" CommandArgument='<%# Eval("Id") %>' CommandName="CancelApply"
                                                                Visible="False" />
                                                            <%-- <asp:HyperLink ID="HyperLinkPub" CssClass="linka" Target="_blank" onclick='<%# String.Format("PopulayerPulic({0});",Eval("Id"))%>'
                                                                runat="server"  Visible="False">中标公告</asp:HyperLink>--%>
                                                            <%--<a href="#" onclick='window.open("../../../../Publicity.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                                                <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>--%>
                                                            <a href='../../../../Publicity.aspx?proid=<%# Eval("Id")%>' rel="facebox">
                                                                <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>
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
                                            &nbsp;
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
