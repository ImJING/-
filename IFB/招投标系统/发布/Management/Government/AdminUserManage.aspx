<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUserManage.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Government.AdminUserManage" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>管理员信息管理</title>
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
        .style1
        {
            width: 266px;
        }
        .tdList table
        {
        	margin-top:5px!important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1000px; font-size: 14px;">
        <table style="width: 90%; margin-left: 40px; margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="16px"
                        Height="13px" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder; color: Black">管理员信息管理</span>
                </td>
            </tr>
            <tr>
                <td  class="tdList">
                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                        <tr>
                            <td class="lab_title">
                                <asp:Label ID="lb_tenderID" runat="server" Text="姓名:"></asp:Label>
                            </td>
                            <td class="style1">
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
                    <asp:GridView ID="GridViewAdminUser" runat="server" AutoGenerateColumns="False" SkinID="GridView"
                        DataKeyNames="Id" Font-Size="13px" Font-Strikeout="False" ShowFooter="True" OnRowCancelingEdit="GridViewAdminUser_RowCancelingEdit"
                        OnRowEditing="GridViewAdminUser_RowEditing" OnRowUpdating="GridViewAdminUser_RowUpdating"
                        OnRowCommand="GridViewAdminUser_RowCommand" OnRowDeleting="GridViewAdminUser_RowDeleting"
                        Width="1000px" OnRowDataBound="GridViewAdminUser_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="姓名" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:Label ID="LabelName" runat="server" Text='<%# Bind("LoginName") %>'></asp:Label>
                                    <asp:HiddenField ID="HiddenFieldId" runat="server" Value='<%# Bind("Id")%>' />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBoxInputName" runat="server" SkinID="TextBox" Visible="true"
                                        Width="350px" MaxLength="20"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="LabelName" runat="server" Text='<%# Bind("LoginName") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" />
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" Wrap="False" />
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="密码" SortExpression="Statement">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBoxPassWord" runat="server" Text='<%# Bind("LoginPwd") %>' MaxLength="45"
                                        Width="200px" TextMode="Password"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBoxInputPassWord" runat="server" SkinID="TextBox" Visible="true"
                                        Width="200px" MaxLength="45" TextMode="Password"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="LabelPassword" runat="server" Text="******" TextMode="Password"></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" Wrap="False" />
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="邮箱地址" SortExpression="Statement">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("Email")%>' MaxLength="45"
                                        Width="200px"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBoxInputEmail" runat="server" SkinID="TextBox" Visible="true"
                                        Width="200px" MaxLength="45"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="LabelEmail" runat="server" Text='<%# Bind("Email")%>' ToolTip='<%# Eval("Email")%>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="300px" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操  作" ShowHeader="true">
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update"
                                        ImageUrl="~/Management/images/IsActive.gif" Text="更新" ToolTip="更 新" />
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False"
                                        CommandName="Cancel" ImageUrl="~/Management/images/IsNotActive.gif" Text="取消"
                                        ToolTip="取 消" />
                                        <asp:ImageButton ID="ImageButtonReset" runat="server" CausesValidation="False"
                                        CommandName="PassWordReset" ImageUrl="~/Management/images/lock.gif" Text="密码重置" ToolTip="密码重置"
                                        CommandArgument='<%# Eval("Id") %>' />
                                    <%--     <asp:ImageButton ID="ImageButtonReset" runat="server" CausesValidation="False"
                                        CommandName="PassWordReset" ImageUrl="~/Management/images/delete.gif" Text="密码重置" ToolTip="密码重置"
                                        CommandArgument='<%# Eval("Id") %>'  />--%>
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
                                        <asp:ImageButton ID="ImageButtonReset" runat="server" CausesValidation="False"
                                        CommandName="PassWordReset" ImageUrl="~/Management/images/lock.gif" Text="密码重置" ToolTip="密码重置"
                                        CommandArgument='<%# Eval("Id") %>' />
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
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
