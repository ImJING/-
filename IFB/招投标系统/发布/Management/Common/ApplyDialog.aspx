<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyDialog.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Common.ApplyDialog"
    StylesheetTheme="HAM1.0" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Page-Exit" content="progid:DXImageTransform.Microsoft.Fade(duration=.5)" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>>淮安市清河区小型工程招标网 -企业报名</title>
       <script src="../../facebox/jquery.js" type="text/javascript"></script>

    <link href="../../facebox/facebox.css" rel="stylesheet" type="text/css" />

    <script src="../../facebox/facebox.js" type="text/javascript"></script>
    <link href="../css/PopupLayer.css" rel="stylesheet" type="text/css" />
    <script src="../css/PopupLayer.js" type="text/javascript"></script>
    <style type="text/css">
        .tab
        {
            width: 100%;
        }
       .noborder
            {
                border-width:0px;
                border-style:none;
                }
        .tab td
        {
            width: 50%;
            height:25px;
            border: solid 1px #999999;
            border-top:none 0px;
        }
        
        .tdList table
        {
            margin-top: 5px !important;
        }
        
    </style>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    
    <div style="width: 700px; margin-left: 40px; margin-top: 5px;" class="tdList">
        <table id="ApplyTable" class="tab" cellpadding="0"; cellspacing="0";>
            <tr style="height: 30px; font-weight: bold;">
                <td colspan="2" style=" border-width:0px;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/loginin_icon_1.gif" Width="13"
                        Height="13" /><asp:Label ID="LabelTitle" runat="server">项目报名表</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 10%; border-top:solid 1px #999999;" align="center">
                    项目名称：
                </td>
                <td style="border-top:solid 1px #999999;">
                    【<asp:Label ID="LabelProNum" runat="server" Text="编号"></asp:Label>】&nbsp;
                      <%--  <asp:HyperLink ID="LinkProTitle" CssClass="linka" runat="server"></asp:HyperLink>--%>
                        <a href='../../ProjectDetails.aspx?proid=<%=Request["proid"]%>' rel="facebox">
                            <asp:Label ID="LabeProtitle" runat="server" Text="LabelTitle"></asp:Label>

                        </a>
                </td>
            </tr>
            <tr>
                <td style="width: 10%" align="center">
                    资质要求：
                </td>
                <td >
                    <table style=" width:100%">
                        <tr>
                            <td style=" border-bottom:none 0px; border-left:none 0px; border-top:none 0px;" >
                                企业：&nbsp;&nbsp;<asp:Label ID="LabeCategory" runat="server" Text="类型"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Label runat="server" ID="LabelRequiredECaptitude" Text="等级"></asp:Label> 
                                   <asp:HiddenField ID="HiddenFieldCategory" runat="server" />
                                <asp:HiddenField ID="HiddenFieldRequiredECaptitude" runat="server" />
                            </td>
                            <td  style=" border-style:none; border-width:0px;">
                                项目经理：&nbsp;&nbsp;<asp:Label runat="server" ID="LabelRequiredMcaptitude" Text="等级"></asp:Label>
                                <asp:HiddenField ID="HiddenFieldRequiredMcaptitude" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 10%" align="center"  rowspan="2">
                    资&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质：
                </td>
                <td>
                    <table style="width: 100%;">
                        <tr>
                            <td align="left" style=" border-bottom:none 0px; border-left:none 0px; border-top:none 0px;" colspan="2">
                              <font style="vertical-align:middle">企业类型：</font>
                                &nbsp;&nbsp;<asp:DropDownList ID="DropDownListEspCategory"  Width="150px"  runat="server"  
                                    SkinID="DropDownList" AutoPostBack="True"
                                 Height="25px" onselectedindexchanged="DropDownListEspCategory_SelectedIndexChanged">
                                 <asp:ListItem Text="请选择" Value="0"></asp:ListItem>
                                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
                               <font style="vertical-align:middle">企业资质：</font>
                              <asp:Label ID="LabelEnterPriseCaptitude" runat="server" Text="等级" Visible="true"></asp:Label>
                                </td>
                            <td align="center" style=" border-style:none; border-width:0px; width:9%;">
                                <img alt="不通过" src="../images/butongguo.png" runat="server" id="ImgBuTongguo1" style="width: 20px;
                                    height: 20px" /><img alt="通过" runat="server" id="ImgTongguo1" visible="false" src="../images/tongguo.png"
                                        style="width: 20px; height: 20px" />
                            </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
            <tr>
                
                <td>
                    <table style="width: 100%;">
                        <tr>
                            <td align="left" style="border-bottom:none 0px; border-left:none 0px; border-top:none 0px;">
                             <font style="vertical-align:middle">项目经理：</font>
                               &nbsp;&nbsp;<asp:DropDownList runat="server" ID="DropDownListMangers" 
                                    TabIndex="1" Width="150px" Height="25px"
                                    SkinID="DropDownList" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownListMangers_SelectedIndexChanged" >
                                    <asp:ListItem Text="请选择" Value="0"></asp:ListItem>
                                </asp:DropDownList>&nbsp;&nbsp;
                            
                              &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelManagerCaptitude" runat="server" Text="" Visible="false"></asp:Label>
                               
                              
                            </td>
                            <td style="border-style:none; border-width:0px; width:9%;" align="center">
                                <img alt="不通过" src="../images/butongguo.png" runat="server" id="ImgBuTongguo2" style="width: 20px;
                                    height: 20px" /><img alt="通过" runat="server" id="ImgTongguo2" visible="false" src="../images/tongguo.png"
                                        style="width: 20px; height: 20px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;报名备注(<asp:Label ID="LabelRemark"
                        runat="server"></asp:Label>)</td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="word-wrap: break-word;">
                    <asp:TextBox ID="TextBoxContent" runat="server"
                        Width="650px" Height="150px" TabIndex="16">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 10%" align="right">
                    报名文件：
                </td>
                <td>
                    <asp:FileUpload runat="server" ID="FileUpLoadContol" TabIndex="3" Width="200px" />(上传文件请压缩打包，且小于5M)
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <%--                <asp:UpdatePanel ID="UpdatePanelButton" runat="server" UpdateMode="Conditional">
                <ContentTemplate>--%>
                 <asp:Button runat="server" ID="btnSubmit" Text="提&nbsp;&nbsp;交" SkinID="Button" Width="120px"
                        OnClick="btnSubmit_Click" Enabled="true" />
                    <%--                </ContentTemplate>
                </asp:UpdatePanel>--%>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
