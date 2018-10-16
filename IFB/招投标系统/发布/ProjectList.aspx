<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true"
    CodeBehind="ProjectList.aspx.cs" Inherits="JSMSTC.InviteTender.ProjectList" %>

<%@ Register Src="Controls/FaceBoxControl.ascx" TagName="FaceBoxControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/index.css" rel="stylesheet" type="text/css" />
    <%--  <script src="JS/PopupLayer.js" type="text/javascript"></script>

    <script src="JS/JSUtil.js" type="text/javascript"></script>--%>
    <%--<link href="CSS/PopupLayer.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:FaceBoxControl ID="FaceBoxControl1" runat="server" />
    <div class="title">
        <table cellpadding="0" cellspacing="0" style="width: 100%;">
            <tr>
                <td>
                    <table cellpadding="0" cellspacing="0" style="height: 30px;">
                        <tr>
                            <td style="width: 5px;">
                                <%-- <img alt="" src="images/img_1.gif" />--%>
                            </td>
                            <td style="color: Red; font-weight: bold; font-size: 14px;">
                                招标公告
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="right">
                </td>
            </tr>
        </table>
    </div>
    <div class="clear"></div>
    <div style="width: 100%;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            CssClass="border" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand"
            EmptyDataText="没有相关信息!" DataKeyNames="Id">
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:TemplateField HeaderText="项目名称">
                    <ItemTemplate>
                        &nbsp;&nbsp;
                        <img alt="" src="images/dot26.jpg" />
                        【<asp:LinkButton ID="LinkbuttonCate" runat="server" Text='<%# Eval("Category.Name") %>'
                            CausesValidation="False" CommandName="catename" CommandArgument='<%# Eval("CategoryId") %>'
                            CssClass="link" ToolTip="点击查看该类型项目的最新信息"></asp:LinkButton>】
                        <%--<asp:HyperLink ID="HyperLink1" runat="server" onclick='<%# String.Format("Populayer({0});",Eval("Id"))%>'
                            CssClass="link" Text='<%# Eval("Title") %>'></asp:HyperLink>--%>
                        <%--<a href="#" onclick='window.open("../ProjectDetails.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                <%# Eval("Title") %></a>--%>
                        <a href='../ProjectDetails.aspx?proid=<%# Eval("Id")%>' rel="facebox">
                            <%# Eval("Title") %></a>
                        <asp:Image ID="ImageNew" runat="server" Visible="false" ImageUrl="images/new1.gif" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="600px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="600px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="中标单位">
                    <ItemTemplate>
                        <asp:HyperLink ID="LinkWinEps" runat="server" Text="暂无" ForeColor="Black"></asp:HyperLink>
                        <asp:HiddenField ID="HiddenFieldProId" runat="server" Value='<%# Eval("Id") %>' />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="发布日期">
                    <ItemTemplate>
                        <asp:Label ID="LabelPubDate" runat="server" Text='<%#Eval("PublicDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="状态">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" CssClass="curr" Text='<%#(int)Eval("State")==0?"已结束":"招标中" %>'
                            ForeColor="Red"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <%--  <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" CssClass="link" onclick='<%# String.Format("PopulayerPulic({0});",Eval("Id"))%>'
                            Visible="False" ToolTip="点击查看中标公告">中标公告</asp:HyperLink>--%>
                        <%--<a href="#" onclick='window.open("../Publicity.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                            <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>--%>
                        <a href='../Publicity.aspx?proid=<%# Eval("Id")%>'rel="facebox">
                                <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>'
                            CommandName="apply" Visible="False" CausesValidation="False" CssClass="link"
                            ToolTip="点击报名该项目">报名</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="GridviewHead" />
            <RowStyle CssClass="GridviewRow" />
        </asp:GridView>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" BackColor="White"
            CustomInfoHTML="第 &lt;font color='red'&gt;&lt;b&gt;%CurrentPageIndex%&lt;/b&gt;&lt;/font&gt; 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
            FirstPageText="首页" Font-Names="Arial" ForeColor="Black" LastPageText="末页" NextPageText="下页"
            NumericButtonCount="7" NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged"
            PageSize="20" PrevPageText="上页" ShowCustomInfoSection="left" ShowInputBox="Always"
            SubmitButtonStyle="botton" SubmitButtonText="跳转" Width="100%">
        </webdiyer:AspNetPager>
    </div>
</asp:Content>
