<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true"
    CodeBehind="PublicityList.aspx.cs" Inherits="JSMSTC.InviteTender.PublicityList" %>

<%@ Register src="Controls/FaceBoxControl.ascx" tagname="FaceBoxControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/index.css" rel="stylesheet" type="text/css" />
<%--    <script src="JS/PopupLayer.js" type="text/javascript"></script>
    <script src="JS/JSUtil.js" type="text/javascript"></script>
     <link href="CSS/PopupLayer.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:FaceBoxControl ID="FaceBoxControl1" runat="server" />
    <div class="title">
        <table cellpadding="0" cellspacing="0" style="width:100%;">
            <tr>
                <td>
                    <table cellpadding="0" cellspacing="0" style=" height:30px;">
                        <tr>
                            <td style="width:5px;">
                                 <%--<img alt="" src="images/img_1.gif" />--%>  
                            </td>
                            <td style="color:Red; font-size:14px; font-weight:bold;">
                                �б깫��
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="right">
                </td>
            </tr>
        </table>
    </div> 
    <div class="clear">
    </div>
    <div style="width:100%;">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="border"
            EmptyDataText="û������ѯ�������Ϣ��" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="��Ŀ����">
                    <ItemTemplate>
                         &nbsp;&nbsp; <img alt="" src="images/dot26.jpg" />��<asp:LinkButton ID="LinkbuttonCate" runat="server" Text='<%# Eval("Category") %>'
                            CausesValidation="False" CommandName="catename" CommandArgument='<%# Eval("CategoryId") %>'
                            CssClass="link" ToolTip="����鿴��������Ŀ��������Ϣ"></asp:LinkButton>��
                       <%-- <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" CssClass="link" onclick='<%# String.Format("Populayer({0});",Eval("Id"))%>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink>--%>
                            <a href='../ProjectDetails.aspx?proid=<%# Eval("Id")%>' rel="facebox"><%# Eval("Title").ToString().Length>30?Eval("Title").ToString().Substring(0,27)+"������": Eval("Title")%></a>
                                                                                                     
                            <%--<a href="#" onclick='window.open("../ProjectDetails.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                <%# Eval("Title") %></a>--%>
                        <asp:Image ID="ImageNew" runat="server" Visible="false" ImageUrl="images/new1.gif" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="600px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="600px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="�б굥λ">
                    <ItemTemplate>
                         <asp:HyperLink ID="LinkWinEps"  runat="server" Text='<% #Eval("EpsName") %>' ForeColor="Black"></asp:HyperLink>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="�б�����">
                    <ItemTemplate>
                        <asp:Label ID="LabelSelectDate" runat="server" Text='<%#Eval("BinPubDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="��������">
                    <ItemTemplate>
                        <asp:Label ID="LabelPubDate" runat="server" Text='<%#Eval("PublicDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="�鿴����">
                    <ItemTemplate>
                      <%--  <asp:HyperLink ID="HyperLink2" CssClass="link" runat="server" Text="�б깫��" onclick='<%# String.Format("PopulayerPulic({0});",Eval("Id"))%>' ></asp:HyperLink>--%>
                      <%--<a href="#" onclick='window.open("../Publicity.aspx?proid=<%# Eval("Id")%>","","width=800,height=450,top=150,left=300, toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no")'>
                                 <asp:Label ID="Labelwin" runat="server" Text="�б깫��"></asp:Label></a>--%>  
                     <a href='../Publicity.aspx?proid=<%# Eval("Id")%>'rel="facebox">
                                <asp:Label ID="Label1" runat="server" Text="�б깫��"></asp:Label></a>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="GridviewHead" />
            <RowStyle CssClass="GridviewRow" />
        </asp:GridView>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" BackColor="White"
            CustomInfoHTML="�� &lt;font color='red'&gt;&lt;b&gt;%CurrentPageIndex%&lt;/b&gt;&lt;/font&gt; ҳ �� %PageCount% ҳ ��ʾ %StartRecordIndex%-%EndRecordIndex% ��"
            FirstPageText="��ҳ" Font-Names="Arial" ForeColor="Black" LastPageText="ĩҳ" NextPageText="��ҳ"
            NumericButtonCount="7" NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged"
            PageSize="20" PrevPageText="��ҳ" ShowCustomInfoSection="left" ShowInputBox="Always"
            SubmitButtonStyle="botton" SubmitButtonText="��ת" Width="100%">
        </webdiyer:AspNetPager>
    </div>
</asp:Content>
