<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProjectBid.aspx.cs" Inherits="JSMSTC.InviteTender.Management.OfferManage.ManageProjectBid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>投标处理</title>
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
            $("input[type='radio']").each(function(){
                if($(this).attr('checked')){
                    temp++;
                }
            });
            if(temp==0){
                alert("请选择一个中标企业！");
                return false;            
             }
            return confirm("[提醒]：如果选择添加，添加成功后，此项目将锁定，将无法再进行修改。\n\r\n\r确定添加？");
        }
        var selectClock;
        var cArr=new Array();
        $(function(){
            $("input[type='radio']").each(function(){
                cArr.push($(this).siblings('label').text());
            });            
        });
        function beginSelect(){
            var obj = $('#btn_clock');
            if(obj.attr('ref')=='0'){
                //开始循环跳动
                selectClock = setInterval(function(){
                    var now=new Date();
                    var number = now.getMilliseconds() % cArr.length;
                    $("#selectOne").html(cArr[number]);
                    var rdo = $("input[type='radio']").eq(number);
                    rdo.attr("checked",true);  
                    $('#<%=HiddenFieldSelectedID.ID %>').val(rdo.val());                    
                },10);
                obj.val("点击停止");
                obj.attr('ref',1);
            }else{                
                clearInterval(selectClock);
                obj.attr('ref',0);
                obj.val("请点击开始抽取");
                $(".btoadd").click();
            }     
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
                         &nbsp;&nbsp;<span style="font-size: 14px; font-weight: bolder;">随机抽取中标企业</span>     
                        <div style="text-align:right; width:100px;float:right;padding-right:20px;"><asp:Button ID="ButtonBack" runat="server" Text="返回项目列表" CssClass="button" 
                                        ToolTip="返回项目列表" onclick="ButtonBack_Click" />
                        </div> 
                        <div style="clear:both;"></div>                                        
                    </td>
                </tr>  
                <tr>
                    <td>                       
                         <span style="font-size: 14px; font-weight: bolder;">项目名称：<font color="red"><asp:Literal ID="LiteralProjectName" runat="server"></asp:Literal></font></span>  
                         <asp:HiddenField ID="HiddenFieldPoolID" runat="server" />
                         <asp:HiddenField ID="HiddenFieldNeedUpdate" runat="server" />
                         <asp:HiddenField ID="HiddenFieldSelectedID" runat="server" Value='0' />
                         <hr style="color: Blue; width: 100%; margin-top:5px;" /> 
                         <asp:Literal ID="LiteralTip" runat="server"></asp:Literal>      
                         <div style="text-align:right"> 
                            <asp:Button ID="ButtonAddNumber" runat="server" Text="新建抽取期别" CssClass="button" 
                                        ToolTip="添加新的抽取期别" onclick="ButtonAddNumber_Click" Visible="false" />
                         </div> 
                                        
                    </td>
                </tr>              
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">                            
                            <tr>
                                <td class="lab_title" valign="top" style="border-bottom:1px dashed #888;">
                                    <asp:Label ID="LabelCompanyList" runat="server" Text="企业列表:"></asp:Label>
                                </td>
                                <td style="border-bottom:1px dashed #888;">
                                   
                                </td>                                
                           </tr>
                           <tr>
                                <td class="lab_title" valign="top">
                                     
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonCompanyList" runat="server" RepeatDirection="Vertical"></asp:RadioButtonList>
                                </td>                                
                           </tr>
                           <tr>
                                <td colspan="2" style="border-top:1px dashed #ccc; text-align:left;padding:5px 0 5px 120px;">
                                    <div id="divButton" runat="server">
                                    <input id="btn_clock" type="button" value="请点击开始抽取" class="button" onclick="beginSelect()" ref='0' />
                                    
                                    <div style="display:none;"><asp:Button ID="ButtonAdd" runat="server" Text="添加" ToolTip="添加" 
                                        CssClass="button btoadd" onclick="ButtonAdd_Click" /></div>
                                    &nbsp;&nbsp;<span id="selectOne" style="color:Red;"></span>
                                    </div>
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
