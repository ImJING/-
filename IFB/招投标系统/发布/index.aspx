<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="JSMSTC.InviteTender.index" %>

<%@ Register Src="Controls/FaceBoxControl.ascx" TagName="FaceBoxControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/index.css" rel="stylesheet" type="text/css" />
        <script src="JS/PopupLayer.js" type="text/javascript"></script>

    <script src="JS/JSUtil.js" type="text/javascript"></script>
    <title>淮安市清河区小型工程招标网 -首页</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:FaceBoxControl ID="FaceBoxControl1" runat="server" />
    <div style="width: 100%;">
        <div class="title">
            <table cellpadding="0" cellspacing="0" style="width: 100%;">
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" style="height: 30px;">
                            <tr>
                                <td style="width: 5px;">
                                </td>
                                <td style="color: Red; font-size: 14px; font-weight: bold;">
                                    最新招投标信息
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="right">
                        <a href="ProjectList.aspx" title="点击查看更多信息">
                            <img src="images/more1.gif" alt="" /></a>
                    </td>
                </tr>
            </table>
        </div>
         <div class="clear" style="width: 100%;">
    </div>
        <div style="width: 100%;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
                OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" EmptyDataText="没有相关信息!"
                DataKeyNames="Id" CssClass="border">
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
                            <a href='../ProjectDetails.aspx?proid=<%# Eval("ID") %>' rel="facebox">
                                <%# Eval("Title")%></a>
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
                            <%--asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" CssClass="link" onclick='<%# String.Format("PopulayerPulic({0});",Eval("Id"))%>'
                                Visible="False" ToolTip="点击查看中标公告">中标公告</asp:HyperLink>--%>
                            <%--<a href="#" onclick='window.open("../Publicity.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                </a>--%>
                            <a href='../Publicity.aspx?proid=<%# Eval("ID") %>' rel="facebox">
                                <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>
                            <asp:LinkButton ID="LinkButtonApply" runat="server" CommandArgument='<%# Eval("Id") %>'
                                CommandName="apply" Visible="False" CausesValidation="False" CssClass="link"
                                ToolTip="点击报名该项目">
                                报名</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonDisplay" runat="server" CommandArgument='<%# Eval("Id") %>'
                                CommandName="display" Visible="false" CausesValidation="False" CssClass="link"
                                ToolTip="点击取消该项目在前台显示。">取消发布</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="GridviewHead" />
                <RowStyle CssClass="GridviewRow" />
            </asp:GridView>
        </div>
    </div>
    <div class="clear" style="height: 10px; width: 100%;">
    </div>
    <div style="width: 100%;">
        <div class="title">
            <table cellpadding="0" cellspacing="0" style="height: 30px; width: 100%;">
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 5px;">
                                    <%--<img alt="" src="images/img_1.gif" />--%>
                                </td>
                                <td style="color: Red; font-size: 14px; font-weight: bold;">
                                    最新中标公告信息
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="right">
                        <a href="PublicityList.aspx" title="点击查看更多信息">
                            <img src="images/more1.gif" alt="" /></a>
                    </td>
                </tr>
            </table>
        </div>
         <div class="clear" style=" width: 100%;">
    </div>
        <div style="width: 100%;">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="100%"
                OnRowDataBound="GridView2_RowDataBound" OnRowCommand="GridView2_RowCommand" EmptyDataText="没有此类的相关信息!"
                DataKeyNames="Id" CssClass="border">
                <EmptyDataRowStyle HorizontalAlign="Center" />
                <Columns>
                    <asp:TemplateField HeaderText="项目名称">
                        <ItemTemplate>
                            &nbsp;&nbsp;
                            <img alt="" src="images/dot26.jpg" />
                            【<asp:LinkButton ID="LinkbuttonCate" runat="server" Text='<%# Eval("Category") %>'
                                CausesValidation="False" CommandName="catename" CommandArgument='<%# Eval("CategoryId") %>'
                                CssClass="link" ToolTip="点击查看该类型项目的最新信息"></asp:LinkButton>】
                            <%--  <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" CssClass="link" onclick='<%# String.Format("Populayer({0});",Eval("Id"))%>'
                                Text='<%# Eval("Title") %>'></asp:HyperLink>--%>
                            <%--<a href="#" onclick='window.open("ProjectDetails.aspx?proid=<%# Eval("ID") %>","","width=800,height=450,top=150,left=300,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no")'>
                                <%# Eval("Title") %></a>--%>
                            <a href='../ProjectDetails.aspx?proid=<%# Eval("ID") %>' rel="facebox">
                                <%# Eval("Title") %></a>
                            <asp:Image ID="ImageNew" runat="server" Visible="false" ImageUrl="images/new1.gif" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="600px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="600px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="中标单位">
                        <ItemTemplate>
                            <asp:HyperLink ID="LinkWinEps" runat="server" Text='<% #Eval("EpsName") %>' ForeColor="Black"></asp:HyperLink>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="中标日期">
                        <ItemTemplate>
                            <asp:Label ID="LabelSelectDate" runat="server" Text='<%#Eval("BinPubDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="发布日期">
                        <ItemTemplate>
                            <asp:Label ID="LabelPubDate" runat="server" Text='<%#Eval("PublicDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="查看公告">
                        <ItemTemplate>
                            <%--<asp:HyperLink ID="HyperLink2" runat="server" CssClass="link" onclick='<%# String.Format("PopulayerPulic({0});",Eval("Id"))%>'
                                ToolTip="点击查看中标公告">中标公告</asp:HyperLink>--%>
                            <%--<a href="#" onclick='window.open("../Publicity.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                </asp:Label></a>--%>
                            <a href='../Publicity.aspx?proid=<%# Eval("ID") %>' rel="facebox">
                                <asp:Label ID="Labelwin" runat="server" Text="中标公告"></asp:Label></a>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="GridviewHead" />
                <RowStyle CssClass="GridviewRow" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
