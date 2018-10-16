<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryEpse.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Enterprise.CategoryEpse"
    StylesheetTheme="HAM1.0" %>

<%@ Import Namespace="JSMSTC.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -企业类型管理</title>

    <script src="../../JS/JSUtil.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function DoDelete() {
            if (confirm("确定要删除分类吗？")) {
                return true;
            }
            return false;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="width:1000px;">
        <table style=" width:90%; margin-left:40px;margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">企业类型管理</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" SkinID="GridView"
                        DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating" 
                        OnRowDataBound="GridView1_RowDataBound" Font-Size="13px" 
                        Font-Strikeout="False" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" onclick='javascript:SelectAll(this);' />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" 
                                    Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="序号">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" 
                                    Wrap="False" />
                                <ItemTemplate>
                                    <asp:Label ID="LabelCode" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" SortExpression="Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="分  类  名" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' 
                                        MaxLength="20"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                                    Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" 
                                    Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="分类描述" SortExpression="Statement">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Statement") %>' 
                                        MaxLength="45"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# StringHandler.CutString((String)Eval("Statement"),25) %>' ToolTip='<%# Eval("Statement") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" 
                                    Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" 
                                    Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操   作" ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update"
                                        ImageUrl="~/Management/images/IsActive.gif" Text="更新" ToolTip="更 新" />
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False"
                                        CommandName="Cancel" ImageUrl="~/Management/images/IsNotActive.gif" 
                                        Text="取消" ToolTip="取 消" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonEdit" runat="server" CausesValidation="False" CommandName="Edit"
                                        ImageUrl="~/Management/images/edit.gif" Text="编辑" ToolTip="编 辑" />
                                    &nbsp;<asp:ImageButton ID="ImageButtonDel" runat="server" CausesValidation="False"
                                        CommandName="Delete" ImageUrl="~/Management/images/delete.gif" Text="删除" 
                                        ToolTip="删 除" OnClientClick="return confirm('确定删除该分类?');" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                                    Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                                    Wrap="False" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="labelName" runat="server" Text="分类名：" Visible="false"></asp:Label>
                    <asp:TextBox ID="TxtCantegoryName" runat="server" SkinID="TextBox" Visible="false"
                        Width="200px" MaxLength="20"></asp:TextBox>
                    &nbsp;<asp:Label runat="server" Text="分类描述：" ID="labelDetail" Visible="false"></asp:Label><asp:TextBox
                        ID="TxtCantegoryDetail" SkinID="TextBox" runat="server" Visible="false" 
                        Width="200px" MaxLength="45"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button runat="server" ID="BtnAddCantegory" SkinID="Button" Text="新增分类" OnClick="BtnAddCantegory_Click" />
                    <asp:Button runat="server" ID="BtnDeletAll" SkinID="Button" Text="删除选中" OnClick="BtnDeletAll_Click"
                        OnClientClick="return DoDelete()" />
                    <asp:Button runat="server" ID="BtnADD" SkinID="Button" Text="新  增" Visible="false"
                        OnClick="BtnADD_Click" Width="90px" />
                    <asp:Button runat="server" ID="BtnCancel" SkinID="Button" Text="取  消" Visible="false"
                        OnClick="BtnCancel_Click" Width="90px" />
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
    </form>
</body>
</html>
