<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestDepartMentList.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.SystemManage.RequestDepartMentList"
    StylesheetTheme="HAM1.0" %>
<%--<%@ Import Namespace="JSMSTC.Common" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>需求单位管理</title>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />
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
            color: Black;
        }
        .lab_Contact
        {
            width: 200px;
            font-size: 13px;
            font-weight: bold;
        }
        .tdList table
        {
        	margin-top:5px!important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1024px; padding-left: 40px; vertical-align:top;">
        <div>
            <table style="width: 100%; margin-top: 5px;"  border="0">
                <tr style="height: 50px;">
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                            Height="13" />
                        &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder; color: Black">需求部门管理</span>
                    </td>
                </tr>
                <tr>
                    <td class="tdList">
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                            <tr>
                                <td class="lab_title">
                                    <asp:Label ID="lb_tenderID" runat="server" Text="部门名称:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxName" runat="server" ToolTip="输入姓名" SkinID="TextBox" Width="200px"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <asp:Button ID="ButtonSearch" runat="server" Text="检索" SkinID="Button" ToolTip="检索"
                                        Width="120px" OnClick="ButtonSearch_Click" />
                                </td>
                                <td>
                                    &nbsp;
                                </td>
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
                    <td class="tdList">
                        <asp:GridView ID="GridViewDePartMentList" runat="server" AutoGenerateColumns="False"
                            SkinID="GridView"  ShowFooter="True"
                            OnRowCancelingEdit="GridViewDePartMentList_RowCancelingEdit" OnRowEditing="GridViewDePartMentList_RowEditing"
                            OnRowUpdating="GridViewDePartMentList_RowUpdating" OnPreRender="GridViewDePartMentList_PreRender"
                            OnRowCommand="GridViewDePartMentList_RowCommand" OnRowDeleting="GridViewDePartMentList_RowDeleting"
                            Width="100%" OnRowDataBound="GridViewDePartMentList_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="部门名称" SortExpression="Statement">
                                    <EditItemTemplate>
                                        <asp:HiddenField ID="HiddenFieldId" runat="server" Value='<%# Bind("Id") %>' />
                                        <asp:TextBox ID="TextBoxName" runat="server" Text='<%# Bind("Name") %>' MaxLength="45"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBoxInputName" runat="server" SkinID="TextBox" Visible="true"
                                            Width="180px" MaxLength="45"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LabelName" runat="server" Text='<%#Bind("Name")%>' ToolTip='<%# Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="地址" SortExpression="Statement">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxAddress" runat="server" Text='<%# Bind("Address") %>' MaxLength="45"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBoxInputAddress" runat="server" SkinID="TextBox" Visible="true"
                                            Width="180px" MaxLength="45"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LabelAddress" runat="server" Text='<%#Eval("Address")%>' ToolTip='<%# Eval("Address") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="联系方式" SortExpression="Statement">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxPhone" runat="server" Text='<%# Bind("Phone") %>' MaxLength="45"
                                            Width="150px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBoxInputPhone" runat="server" SkinID="TextBox" Visible="true"
                                            Width="180px" MaxLength="45"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LabelPhone" runat="server" Text='<%#Eval("Phone")%>' ToolTip='<%# Eval("Phone") %>'
                                            Width="150px"></asp:Label>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="操  作" ShowHeader="true">
                                    <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update"
                                            ImageUrl="~/Management/images/IsActive.gif" Text="更新" ToolTip="更 新" />
                                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False"
                                            CommandName="Cancel" ImageUrl="~/Management/images/IsNotActive.gif" Text="取消"
                                            ToolTip="取 消" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:Button ID="BtnADD" runat="server" SkinID="Button" Text="新增" Visible="true" CommandName="add"
                                            Width="100px" />
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButtonEdit" runat="server" CausesValidation="False" CommandName="Edit"
                                            ImageUrl="~/Management/images/edit.gif" Text="编辑" ToolTip="编 辑" />
                                        &nbsp;<asp:ImageButton ID="ImageButtonDel" runat="server" CausesValidation="False"
                                            CommandName="Delete" ImageUrl="~/Management/images/delete.gif" Text="删除" ToolTip="删 除"
                                            CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('确定要删除吗?');" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="10"
                            PageSize="10" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
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
