<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomSelect.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.RandomSelect"
    StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>淮安市清河区小型工程招标网 -抽取</title>
    <%--   <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />

    <script src="../css/PopupLayer.js" type="text/javascript"></script>--%>

    <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>

    <style type="text/css">
        #lab_proname
        {
            font-size: 25px;
            font-weight: bold;
        }
        #program
        {
            font-size: 20px;
            letter-spacing: 3px;
            width: 375px;
            height: 45px;
            text-align: center;
            line-height: 45px;
            background-color: #33CCCC;
        }
        .button_begin
        {
            float: right;
        }
        .button_stop
        {
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <script type="text/javascript">
        var hiddenValue;
        function IsHidden() {
            hiddenValue = document.getElementById("counthidden").value;
            if (hiddenValue.valueOf() != 0) {
                document.getElementById('<%=btn_stop.ClientID %>').disabled = false;

                document.getElementById('btn_select').disabled = true;

                BeginSelect();
            }
            else {
                alert("参加竞标的企业至少一家!");
            }
        }

        function BeginSelect() {

            var randomIndex = parseInt((Math.random() * (hiddenValue)));
            document.getElementById('result').innerHTML = "企  业  编  号   " + (randomIndex + 1) + "";
            setTimeout("BeginSelect()", 1);
        }
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        })
    </script>

    <div style="margin-left: 25px; margin-top: 15px; height: 25px; line-height: 25px;">
        <div style="float: left; width: 30px;" align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Management/images/loginin_icon_1.gif" />
        </div>
        <div style="float: left;">
            <span style="font-size: 14px; font-weight: bold;">项目最终抽取</span>
        </div>
    </div>
    <div>
        <div style="padding-left: 45px; padding-top: 25px;">
            <table style="width: 95%;">
                <tr>
                    <td colspan="2">
                        <table align="left">
                            <tr>
                                <td>
                                    <div style="float: left;">
                                        <span>项目标题:</span>
                                    </div>
                                    <div>
                                        <%--<asp:HyperLink  ID="linkTitle" Target="_blank" runat="server" ToolTip="点击查看项目公告"></asp:HyperLink>--%>
                                        <a href='../../ProjectDetails.aspx?proid=<%=Request["proid"]%>' rel="facebox">
                                            <asp:Label ID="LabelproTitle" runat="server" Text="LabelproTitle"></asp:Label>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%--                                    <div style="float:left;">
                                        <span>项目内容:</span>
                                    </div>
                                    <div>
                                        <asp:Label ID="lab_content" runat="server" Text="Label"></asp:Label>
                                    </div> --%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span style="font-size: 14px; font-weight: bold;">候选名单</span><input type="hidden"
                            runat="server" id="counthidden" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="98%" SkinID="GridView" AutoGenerateColumns="False"
                            PageSize="6">
                            <Columns>
                                <asp:TemplateField HeaderText="序号">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" SkinID="TextBox"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1%>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>    
                                <asp:TemplateField HeaderText="企业名称">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" SkinID="TextBox"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("EpsId","EpseView.aspx?EpseId={0}") %>'
                                            Text='<%# Eval("EpsName") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="法  人">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("LegalPersonName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="250px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="250px" />
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="企业类型">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" SkinID="TextBox"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="企业性质">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" SkinID="TextBox"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# (int)Eval("EPSNature")==1?"国企":(int)Eval("EPSNature")==2?"私企":"外企" %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="执业资格">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("BslisenceID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="text-align: center; height: 45px; line-height: 45px; font-weight: bold;
                                    color: Red;">
                                    <span>没有候选人!</span>
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <%--<webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="7"
                            PageSize="5" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                            ShowCustomInfoSection="left" FirstPageText="首页" LastPageText="末页" NextPageText="下页"
                            PrevPageText="上页" Font-Names="Arial" ShowInputBox="Always" BackColor="#D5E8F4"
                            SubmitButtonText="跳转" SubmitButtonStyle="botton" OnPageChanged="AspNetPager1_PageChanged"
                            AlwaysShow="True">
                        </webdiyer:AspNetPager>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <table style="width: 800px; height: 150px;" align="center">
                            <tr>
                                <td style="color: Red; font-size: 20px; height: 35px; width: 100%;" colspan="2">
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <div id="program" align="center">
                                        <div align="center">
                                            <label id="result" runat="server">
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <input id="btn_select" type="button" runat="server" onclick="IsHidden()" value="开  始"
                                        style="width: 100px; background-color: White; border-color: #99ACDD;" />
                                </td>
                                <td align="left">
                                    <asp:Button ID="btn_stop" runat="server" Text="停    止" SkinID="Button" OnClick="btn_stop_Click"
                                        CssClass="button_stop" Width="100px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
<%--<script type="text/javascript">
    function StopSelectBtn() {
        document.getElementById('btn_select').disabled = true;
    }
</script>--%>
