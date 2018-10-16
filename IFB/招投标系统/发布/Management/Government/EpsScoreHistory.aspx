<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EpsScoreHistory.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Government.EpsScoreHistory" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 -历史评分记录</title>
  <%--  <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />--%>

  <%--  <script src="../css/PopupLayer.js" type="text/javascript"></script>--%>
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
    <div style="width: 1000px;">
        <table style="width: 90%; margin-left: 40px; margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" />
                    &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">企业历史投标及评价</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-weight: bold;">企业名称：&nbsp;&nbsp;</span>
                    <asp:HyperLink ID="LinkEpsName" runat="server" CssClass="linka"  Text="企业名"></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridViewHistoryList" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                        Width="800px" DataKeyNames="ProId"   OnRowDataBound="GridViewHistoryList_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="序号">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="项目名称">
                                <ItemTemplate>
                                  <%--  <asp:HyperLink ID="HyperLinkTitle" CssClass="linka" runat="server" onclick='<%# String.Format("Populayer({0});",Eval("ProId"))%>'
                                        Text='<%# Eval("ProName") %>' Target="_blank"></asp:HyperLink>--%>
                                   <a href='../../../../ProjectDetails.aspx?proid=<%# Eval("ProId") %>' rel="facebox">
                                      <%# Eval("ProName")%></a>
                                        <asp:HiddenField ID="HiddProId" runat="server" Value='<% #Eval("ProId") %>' />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="350px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="报名时间">
                                <ItemTemplate>
                                    <asp:Label ID="LabelAppdate" runat="server" Text='<%# Eval("ApplyDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="中标结果">
                                <ItemTemplate>
                                    <asp:Label ID="LabelResult" runat="server" Text='<%# Eval("Result") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="评分">
                                <ItemTemplate>
                                    <asp:Label ID="LabelScore" runat="server" ForeColor="Green" Text='<%# Eval("Score") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="评分详情" Visible="False">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLinkDetail" runat="server" CssClass="link" NavigateUrl='<%#Eval("ProId","EvaluateEpse.aspx?proid={0}") %>' ToolTip="点击查看评价详情">查看</asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="width:100%; height:45px; text-align:center; line-height:45px; color:Red; font-weight:bold;">
                                企业尚无竞标记录！
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" BackColor="#D5E8F4"
                        CustomInfoHTML="第 &lt;font color='red'&gt;&lt;b&gt;%CurrentPageIndex%&lt;/b&gt;&lt;/font&gt; 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                        FirstPageText="首页" Font-Names="Arial" LastPageText="末页" NextPageText="下页" NumericButtonCount="7"
                        NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged"
                        PageSize="7" PrevPageText="上页" ShowCustomInfoSection="left" ShowInputBox="Always"
                        SubmitButtonStyle="botton" SubmitButtonText="跳转" Width="700px">
                    </webdiyer:AspNetPager>
                </td>
            </tr>
            <tr>
                <td>
                    该企业的历史综合评分为：&nbsp;&nbsp;<asp:Label ID="LabelSorce" runat="server" Text="0" Font-Bold="True"
                        Font-Size="50px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; 信用等级：&nbsp;&nbsp;<asp:Label ID="LabelLeve" runat="server"
                        Text="0" Font-Bold="True" Font-Size="50px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" OnClick="LinkButton1_Click">返回企业列表</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
