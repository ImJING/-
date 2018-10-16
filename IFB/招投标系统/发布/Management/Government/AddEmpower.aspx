<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmpower.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.AddEmpower"
    StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -项目授权</title>

    <script src="../../JS/JSUtil.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function DoDelete() {
            if (confirm("确定要取消授权吗？")) {
                return true;
            }
            return false;
        }
    </script>

    <style type="text/css">
        body
        {
            font-size: 12px;
        }
        .link{color:Blue; text-decoration:none;} 
        .link:hover{text-decoration: underline; color:Red;} 
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1000px;">
        <table style="width: 90%; margin-left: 40px; margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">招标项目授权</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-weight: bold;">项目名称：&nbsp;&nbsp;</span>
                    <asp:HyperLink CssClass="link" ID="linkTitle1" Target="_blank" runat="server" ToolTip="点击查看项目公告" ></asp:HyperLink>
                </td>
            </tr>
            <tr style="height: 42px;">
                <td>
                    <%--                <span style="font-weight:bold;">项目简介：</span>
                <asp:Label ID="LabelDetail" runat="server" Text=""></asp:Label>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridViewEpowerList" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                        DataKeyNames="EpowerId" OnRowDeleting="GridViewEpowerList_RowDeleting" OnRowDataBound="GridViewEpowerList_RowDataBound"
                         >
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" onclick='javascript:SelectAll(this);' />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    <asp:HiddenField ID="HiddenFieldEpsId" runat="server" 
                                        Value='<%# Eval("Epsid") %>' />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="序号">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                                    Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="企业名称">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" CssClass="link" runat="server" NavigateUrl='<%# Eval("EpsId","EditEpse.aspx?epseid={0}") %>'
                                        Text='<%# Eval("EpsName") %>'></asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle Width="250px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="企业性质">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("EPSNatureDisplayName") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="行业类型">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False" HeaderText="操作">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                        ImageUrl="~/Management/images/delete.gif" ToolTip="取消企业授权" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="text-align: center; font-weight:bold; font-size: 15px; line-height: 45px; height: 45px;
                                letter-spacing: 2; color:Red;">
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
            <tr style="height: 24px;">
                <td>
                </td>
            </tr>
            <tr style="height: 24px;">
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownListCategory" runat="server" AutoPostBack="True" OnDataBound="DropDownListCategory_DataBound"
                        OnSelectedIndexChanged="DropDownListCategory_SelectedIndexChanged" SkinID="DropDownList">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownListEpsName" runat="server" SkinID="DropDownList" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="ButtonAdd" runat="server" Text="添加到授权表" Width="100px" SkinID="Button" OnClick="ButtonAdd_Click" />
                    &nbsp;
                    <asp:Button ID="ButtonDeleteAll" runat="server" Text="批量取消授权" Width="100px" SkinID="Button" OnClick="ButtonDeleteAll_Click"
                        OnClientClick="return DoDelete()" />
                    &nbsp;
                    <asp:Button ID="ButtonReturn" runat="server" Text="返回管理列表" Width="100px" SkinID="Button" OnClick="ButtonReturn_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
