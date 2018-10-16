<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProjectList.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageProjectList" StylesheetTheme="HAM1.0"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>项目信息管理列表</title>
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
                <tr style="height: 50px;">
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13" Height="13" />
                         &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">项目信息管理</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">                            
                            <tr>
                                <td class="lab_title">
                                    <asp:Label ID="Label2" runat="server" Text="项目名称:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxProjectName" runat="server" ToolTip="输入项目名称" SkinID="TextBox" Width="200px"></asp:TextBox>
                                </td>
                                <td></td>
                                <td></td>
                                <td style="width:350px; text-align:right;">
                                    <asp:Button ID="ButtonSearch" runat="server" Text="检索" ToolTip="检索" CssClass="button" onclick="ButtonSearch_Click" />&nbsp;
                                    <asp:Button ID="ButtonAdd" runat="server" Text="新建项目" CssClass="button" ToolTip="新建项目" onclick="ButtonAdd_Click" />
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
                    <td>
                        <asp:GridView ID="GridView1" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                             OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"
                            OnRowDeleting="GridView1_RowDeleting"  onrowcancelingedit="GridView1_RowCancelingEdit" 
                            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" DataKeyNames="ID">
                            <Columns>
                                <asp:TemplateField HeaderText="序号">
                                    <ItemTemplate>
                                        <%# (this.AspNetPager1.CurrentPageIndex - 1) * this.AspNetPager1.PageSize + Container.DataItemIndex + 1%>
                                        <asp:HiddenField ID="HiddenFieldID" runat="server" Value='<%# Eval("ID") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle Width="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目名称">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxPName" runat="server" Text='<%# Eval("Name")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                      <%-- <%# Eval("Name")%>--%>
                                       <div title='<%# Eval("Name")%>'>
                                        <%# Eval("Name").ToString().Trim().Length > 15 ? Eval("Name").ToString().Trim().Substring(0, 15) + "..." : Eval("Name")%>
                                       </div>                                     
                                    </ItemTemplate>
                                    <HeaderStyle Width="250px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目造价">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxPCost" runat="server" Text='<%# Eval("Cost")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>                                       
                                        <%# Eval("Cost")%> 元
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="项目详情">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBoxPInfo" runat="server"  Text='<%# Eval("Info")%>' TextMode="MultiLine" Height="80px" Width="220px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div title='<%# Eval("Info")%>'>
                                        <%# Eval("Info").ToString().Trim().Length > 15 ? Eval("Info").ToString().Trim().Substring(0, 15) + "..." : Eval("Info")%>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Width="220px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>   
                                <asp:TemplateField HeaderText="创建时间">                                    
                                    <ItemTemplate>                                       
                                        <%# Eval("CreateTime")%>
                                    </ItemTemplate>
                                    <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="中标单位">                                    
                                    <ItemTemplate>                                       
                                        <asp:Label ID="LabelCompanyName" runat="server" Text='<%# Eval("ID")%>'></asp:Label>
                                        <asp:ImageButton ID="ImageButtonBidEdit" runat="server" ToolTip="随机抽取中标企业" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="BidEdit" ImageUrl="~/Management/images/apply.gif" />
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:TemplateField>        
                                <asp:TemplateField HeaderText="操    作">  
                                    <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="确定修改" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="Update" ImageUrl="~/Management/images/IsShow.gif" OnClientClick="return confirm('确定要修改吗?');" />
                                        <asp:ImageButton ID="ImageButton3" runat="server" ToolTip="取消修改" CommandArgument='<%# Eval("ID") %>'
                                                CommandName="Cancel" ImageUrl="~/Management/images/IsNotShow.gif" OnClientClick="return confirm('确定要取消修改吗?');" />                                        
                                    </EditItemTemplate>                                
                                    <ItemTemplate>                                        
                                        <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="编辑当前项目信息" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="Edit" ImageUrl="~/Management/images/edit.gif" />
                                        <asp:ImageButton ID="imgbtn_delete" runat="server" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="Delete" ImageUrl="~/Management/images/delete.gif" OnClientClick="return confirm('确定要删除吗?');"
                                            ToolTip="删除" />
                                        
                                        <asp:ImageButton ID="ImageButtonBidShow" runat="server" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="BidShow" ImageUrl="~/Management/images/ss-fdj.png" ToolTip="查看中标结果" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
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
                            PageSize="7" NumericButtonTextFormatString="[{0}]" CustomInfoHTML="第 <font color='red'><b>%CurrentPageIndex%</b></font> 页 共 %PageCount% 页 显示 %StartRecordIndex%-%EndRecordIndex% 条"
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
