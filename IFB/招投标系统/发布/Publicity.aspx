<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Publicity.aspx.cs" Inherits="JSMSTC.InviteTender.Publicity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>淮安市清河区小型工程招标网 -中标公告</title>
    <%-- <script type="text/javascript" language="javascript">
        function ClosePage() {
            parent.closeWindow();
        }
        function changeFontSize(pucl, size) {
            if (pucl.style)
                pucl.style.fontSize = size;
            for (var i = 0; i < pucl.childNodes.length; i++) {
                changeFontSize(pucl.childNodes[i], size)
            }
        }
    </script>

    <style type="text/css">
       
       #total
       {
           width:800px;
       }
        td
        {
           
            color: #000000;
            font-size: 12px;
            height: 25px;
            width: 50%;
         
        }
        th
        {
            color:blue;
            font-size: 12px;
        }
        .linkbtn
        {
            color: #ff0000;
            font-size: 12px;
            text-decoration: none;
        }
        .linkbtn:hover
        {
            color: #ff0000;
            font-size: 12px;
            text-decoration: underline;
        }
        #top
        {
            height:30px;
            width:800px;
            background-image:url(images/img_index.PNG);
            background-repeat:repeat-x;
        }
        .text
        {
            padding-left:50px;
        }
        .text_align
        {
            padding-left:25px;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 800px; color: #272727; max-height: 350px; overflow-x: auto; overflow: scroll">
        <table border="0" cellspacing="0" cellpadding="2" width="100%" bgcolor="#ffffff"
            align="center">
            <tr>
                <td align="center" colspan="4">
                    <b style="font-size: 24px;">
                        <asp:Label ID="LabelTitle" runat="server"></asp:Label></b>
                    <hr size="3" style="color: #d9d9d9" />
                </td>
            </tr>
            <%--<tr style="height: 50px;">
                                    <td align="center">
                                        字体大小【<asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'18px');return false;">大</asp:LinkButton>】
                                        【<asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'13px');return false;">中</asp:LinkButton>】
                                        【<asp:LinkButton ID="LinkButton3" runat="server" CssClass="linkbtn" OnClientClick="changeFontSize(document.getElementById('content'),'12px');return false;">小</asp:LinkButton>】
                                        【<asp:LinkButton ID="LinkButton4" runat="server" CssClass="linkbtn" OnClientClick="ClosePage()">关闭窗口</asp:LinkButton>】
                                        【<asp:LinkButton ID="LinkButton5" runat="server" CssClass="linkbtn" OnClientClick="javascript:window.print()">打印</asp:LinkButton>】
                                    </td>
                                </tr>--%>
            <tr>
                <td align="center" colspan="4">
                    <strong style="color: Blue;">编号:<asp:Label ID="LabelNumber" runat="server"></asp:Label>
                        &nbsp;&nbsp; &nbsp;&nbsp; 发布时间:</strong><asp:Label ID="LabelPubDate" runat="server"></asp:Label></strong>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 120px;">
                    <strong>行业要求:</strong>
                </td>
                <td style="width: 180px;">
                    <asp:Label ID="LabelCategory" runat="server"></asp:Label>
                </td>
                <td style="width: 120px;">
                    <strong>报名备注:</strong>
                </td>
                <td style="width: 180px;">
                    <asp:Label ID="LabelRemark" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>企业资质要求:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelRct" runat="server"></asp:Label>
                </td>
                <td>
                    <strong>经理人资质要求:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelRmct" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>标书下载:</strong>
                </td>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLinkDownLoad" runat="server" Text="下载" Target="_blank"></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <strong>公告内容:</strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>中标企业:</strong>
                </td>
                <td>
                    <span style="color: Green; font-size: 13px; font-weight: bold">
                        <asp:Label ID="LabelWinEpsName" runat="server"></asp:Label></span>
                </td>
                <td>
                    <strong>企业资质:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelEpsCt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>项目经理人:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelManger" runat="server"></asp:Label>
                </td>
                <td>
                    <strong>经理人资质:</strong>
                </td>
                <td>
                    <asp:Label ID="LabelMct" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>抽取时间:</strong>
                </td>
                <td colspan="3">
                    <asp:Label ID="LabelSelectTime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 10px;" colspan="4">
                </td>
            </tr>
            <tr>
                <td style="height: 10px;" colspan="4">
                    <strong>中标企业是系统从以下候选企业名单中随机抽取:</strong>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False"
                        OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="序号">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" Height="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" Wrap="True"
                                    Height="20px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="企业名称">
                                <ItemTemplate>
                                    <asp:HiddenField ID="HiddenFieldEName" Value='<%# Eval("ID") %>' runat="server" />
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" Height="20px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="资质">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Height="20px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="所属行业">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" Height="20px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 10px;" colspan="4">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <img src="images/notepad.gif" alt="" style="height: 19px; width: 26px" />
                    <span>自本中标结果公告之日起两个工作日内，对中标结果没有异议的，将签发中标通知书。如有异议，请在公告的两个工作日内，以单位 </span>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <span>(盖章)及个人(署名)名义用书面材料向清河区采购中心举报。 </span>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
