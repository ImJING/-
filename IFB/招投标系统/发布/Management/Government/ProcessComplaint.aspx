<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcessComplaint.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Government.ProcessComplaint" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -投诉建议处理</title>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <script src="../css/PopupLayer.js" type="text/javascript"></script>
    <style type="text/css">
        body
        {
            font-size: 12px;
        }
        .td
        {
            width: 100px;
            background-color: #F4F4F4;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1000px; margin-left: 40px; margin-top: 5px;">
        <table style="width: 100%;">
            <tr style="height: 50px;">
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">投诉建议处理</span>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td class="td">
                                            <asp:Label ID="Label1" runat="server" Text="类型:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList runat="server" SkinID="DropDownList" Width="200px" ID="DropDownListType">
                                                <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                                                <asp:ListItem Value="1">投诉</asp:ListItem>
                                                <asp:ListItem Value="2">建议</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td class="td">
                                            <asp:Label ID="lb_title" runat="server" Text="标题:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_title" runat="server" ToolTip="输入标题" SkinID="TextBox" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td class="td">
                                            <asp:Label ID="lb_state" runat="server" Text="处理状态:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="drop_state" runat="server" SkinID="DropDownList" Width="200px">
                                                <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                                                <asp:ListItem Value="1">处理中</asp:ListItem>
                                                <asp:ListItem Value="2">已处理</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td class="td">
                                            <asp:Button ID="ButtonSearch" runat="server" SkinID="Button" Width="70px" 
                                                Text="查&nbsp;&nbsp;询" onclick="ButtonSearch_Click" />
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:GridView ID="GridView1" SkinID="GridView" Width="100%" runat="server" 
                        onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="序号">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="类型">
                                <ItemTemplate>
                                    <asp:Label ID="LabelType" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="标题">
                                <ItemTemplate>
                                    <asp:HyperLink runat="server" ID="LinkDetail" Text='<%# Eval("Title ") %>' CssClass="linka"></asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="提交人">
                                <ItemTemplate>
                                    <asp:HyperLink runat="server" ID="LinkEpsName" Text='<%#Eval("Enterprise.UserName") %>' NavigateUrl="EditEpse.aspx?epseid={0}"
                                        CssClass="linka"></asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="提交时间">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("SuggDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="针对项目">
                                <ItemTemplate>
                                    <asp:HyperLink ID="LinkProTitle" CssClass="linka" runat="server" Text='<%# Eval("Project.Title") %>'
                                        Target="_blank" onclick='<%# String.Format("Populayer({0});",Eval("Id"))%>'></asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="处理状态">
                                <ItemTemplate>
                                    <asp:Label ID="LabelState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                <asp:ImageButton ID="ImageButtonChuLi" runat="server" ImageUrl="~/Management/images/arrow_!.gif" />
                                    <asp:ImageButton ID="ImageButtonDel" runat="server" ImageUrl="~/Management/images/delete.gif" />
                                    
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                        </Columns>
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
    </form>
</body>
</html>
