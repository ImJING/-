<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageNumberCompanys.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageNumberCompanys" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>增加相关企业</title>
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
        function DoCheck(){
            var temp=0;
            $("input[type='checkbox']").each(function(){
                if($(this).attr('checked')){
                    temp++;
                }
            });
            if(temp==0){
                alert("请选择相关企业！");
                return false;            
             }
            return confirm("[提醒]：如果选择添加，添加成功后，本期刊号将锁定，将无法再进行修改。\n\r\n\r确定添加？");
        }
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
                         &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">增加相关企业</span>  
                         <hr style="color: Blue; width: 100%; margin-top:5px;" />                      
                    </td>
                </tr>                
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">                            
                            <tr>
                                <td class="lab_title" valign="top" style="border-bottom:1px dashed #888;">
                                    <asp:Label ID="Label2" runat="server" Text="企业列表:"></asp:Label>
                                </td>
                                <td style="border-bottom:1px dashed #888;font-size:12px;">
                                    <asp:CheckBox ID="CheckBoxAll" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="CheckBoxAll_CheckedChanged" Text="全选" CssClass="checkAll"></asp:CheckBox>
                                </td>                                
                           </tr>
                           <tr>
                                <td class="lab_title" valign="top">
                                     
                                </td>
                                <td>
                                    <asp:CheckBoxList ID="CheckBoxCompanyList" runat="server" RepeatDirection="Vertical" CellSpacing="2"></asp:CheckBoxList>
                                </td>                                
                           </tr>
                           <tr>
                                <td colspan="2" style="border-top:1px dashed #ccc; text-align:left;padding:5px 0 5px 120px;">
                                    <asp:Button ID="ButtonAdd" runat="server" Text="添加" ToolTip="添加" 
                                        CssClass="button" onclick="ButtonAdd_Click" OnClientClick="javascript:return DoCheck();" />&nbsp;
                                    <asp:Button ID="ButtonBack" runat="server" Text="返回抽取期别列表" CssClass="button" 
                                        ToolTip="返回抽取期别列表" onclick="ButtonBack_Click" />
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
