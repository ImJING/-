<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageNumberRecords.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageNumberRecords"  StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>项目期刊号管理列表</title>
     <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />  
     <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />  
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
        }
        
        .lab_Contact
        {
            width: 200px;
            font-size: 13px;
            font-weight: bold;
        }
        .button
        {
        	background:url(../../images/img_nav.PNG) repeat-x;
        	border:1px solid #ccc;
        	width:120px;
        	padding:5px 0;
        	cursor:pointer;
        	color:#fff;
        }
        .buttonUnactive
        {
        	background:url(../../images/img_bottomnav.PNG) repeat-x;
        	border:1px solid #ccc;
        	width:120px;
        	padding:5px 0;
        	cursor:default;
        	color:#888;
        }
     </style>

    <script src="../../facebox/jquery.js" type="text/javascript"></script>
    <script src="../../facebox/facebox.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1024px; padding-left: 40px;">
        <div>
            <table style="width: 100%; margin-top: 5px;">
                <tr style="height: 30px;">
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13" Height="13" />
                         &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">项目期刊号:[<font color="red"><asp:Literal ID="LiteralNumber" runat="server"></asp:Literal></font>] 的中标结果</span>
                    </td>
                </tr>
                <tr>                    
                    <td style="text-align:right;">                        
                        <asp:Button ID="ButtonBack" runat="server" Text="返回项目期刊号" CssClass="button" 
                            ToolTip="返回项目期刊号" onclick="ButtonBack_Click" />
                    </td>           
                </tr>
                <tr style="height: 30px;">
                    <td>
                        <hr style="color: Blue; width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                            OnRowDataBound="GridView1_RowDataBound"                        
                            GridLines="Horizontal"
                            DataKeyNames="ID"> 
                            <Columns>
                                <asp:TemplateField HeaderText="公司名称">
                                    <ItemTemplate>                                       
                                        <asp:Label ID="LabelCompany" runat="server" Text='<%# Eval("CompayID")%>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="350px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目名称">
                                    <ItemTemplate>                                      
                                       <asp:Label ID="LabelProject" runat="server" Text='<%# Eval("PoolID")%>'></asp:Label>                                
                                    </ItemTemplate>
                                    <HeaderStyle Width="350px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="中标结果">                                    
                                    <ItemTemplate>                                        
                                        <asp:Label ID="LabelWinned" runat="server" Text='<%# Eval("Winned")%>'></asp:Label>    
                                    </ItemTemplate>
                                    <HeaderStyle Width="120px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="中标时间">                                    
                                    <ItemTemplate>
                                        <asp:Label ID="LabelWinnedTime" runat="server" Text='<%# Eval("WinnedTime")%>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="170px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>                                
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <EmptyDataTemplate>
                                <div style="text-align: center; font-weight: bold; font-size: 15px; line-height: 45px;
                                    height: 45px; letter-spacing: 2; color: Red;">
                                    没有数据!
                                </div>
                            </EmptyDataTemplate>
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />                           
                            <AlternatingRowStyle BackColor="#F7F7F7" />                                                  
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" NumericButtonCount="7"
                            PageSize="15" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
                            ShowCustomInfoSection="left" FirstPageText="首页" LastPageText="末页" NextPageText="下页"
                            PrevPageText="上页" Font-Names="Arial" ShowInputBox="Always" BackColor="#D5E8F4"
                            SubmitButtonText="跳转" SubmitButtonStyle="botton" OnPageChanged="AspNetPager1_PageChanged"
                            AlwaysShow="true">
                        </webdiyer:AspNetPager>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
