<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.AdminLoginPage" StylesheetTheme="HAM1.0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市清河区小型工程招标网 </title>
    <style type="text/css">
        #all
        {            
        }
        #main
        {
        	margin: 10px auto;
            height: 604px;
            width: 953px;
            z-index: 1;
            background:url(images/admin_login_bg.png) no-repeat;
        }
        #logvid
        {
        	text-align:left;
        	padding-top:228px;
        	padding-left:475px;
        }
        #pwdiv
        {
            text-align:left;
        	padding-top:8px;
        	padding-left:488px;
        }
        #checkdiv
        {
            text-align:left;
        	padding-top:10px;
        	padding-left:475px;
        }
        #btn
        {
            text-align:left;
        	padding-top:8px;
        	padding-left:508px;
        }
        #Type
        {
            text-align:left;
        	padding-top:8px;
        	padding-left:463px;
        }
        #home
        {
            text-align:center;
        	padding-top:13px;       	
        }
        a{ text-decoration:none; color:#556B2F;}
        a:hover { text-decoration:underline;}
        #TxtPwd
        {
            background: url(../images/bg_5.gif) no-repeat;
            width: 121px;
            height: 23px;
            line-height: 23px;
            border: 0px;
        }
        #TxtLogInName
        {
            background: url(../images/bg_4.gif) no-repeat;
            width: 121px;
            height: 23px;
            line-height: 23px;
            border: 0px;
        }
        #CheckCode
        {
            background: url(../images/bg_6.gif) no-repeat;
            width: 65px;
            height: 23px;
            line-height: 23px;
            border: 0px;
        }
        #checkdiv input,#checkdiv img
        {
        	vertical-align:middle;
        }
    </style>

    <script src="../JS/jquery.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        var value;
        function GetSessionValue() {
            $.ajax({
                type: "get",
                url: "/../GetSessiovalue.aspx",
                dataType: "text",
                data: { Action: "GetSession" },
                async: false,
                cache: false,
                success: function(sessionValue) {
                    value = sessionValue;
                }
            });
        }
        function SerialCheck(source, arguments) {
            GetSessionValue();
            var code = $("#CheckCode").attr("value");
            if (value != null && code != null) {
                if (code.toString().toLowerCase() == value.toString().toLowerCase()) {
                    arguments.IsValid = true;
                }
                else {
                    $("#CheckCode").attr("value", "");
                    arguments.IsValid = false;
                    $("#imgSerial").attr("src", "../Management/Common/VerifyImage.ashx?" + Math.random());
                    $("#CheckCode").focus();
                }
            }
            else
            { arguments.IsValid = false; }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
      <!--[if lte IE 6]>
    <div style="color:red;font-size:14px;font-weight:bold;text-align:center;padding:10px 0;background:#ff8;width:960px;margin:5px auto;">您当前的浏览器版本太低，请下载最新版本的IE浏览器IE8 &nbsp; <a href="./CSS/IE8-WindowsXP-x86-CHS.exe" style="color:blue;">点击下载</a></div>
    <![endif]-->
    <div id="all">        
        <div id="main">
            <div id="logvid">
                  用户名：<asp:TextBox ID="TxtLogInName" runat="server" TabIndex="1" SkinID="TextBox" 
                    MaxLength="20" Width="121"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVLog" runat="server" ErrorMessage="用户名不能为空!" ControlToValidate="TxtLogInName"
                    Display="None" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"
                    TargetControlID="RFVLog" PopupPosition="Right">
                </ajaxToolkit:ValidatorCalloutExtender>
            </div>
            <div id="pwdiv">
                密码：<asp:TextBox ID="TxtPwd" runat="server"  SkinID="TextBox" TabIndex="1" TextMode="Password"
                    MaxLength="16"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPwd" runat="server" ErrorMessage="密码不能为空!" ControlToValidate="TxtPwd"
                    Display="None" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server"
                    TargetControlID="RFVPwd" PopupPosition="Right">
                </ajaxToolkit:ValidatorCalloutExtender>
            </div>
            <div id="Type">
                登录选择：<asp:DropDownList ID="DropDownListType" TabIndex="1" runat="server" Width="120">
                    <asp:ListItem Value="1">管理员</asp:ListItem>
                    <asp:ListItem Value="3">需求部门</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="checkdiv">
            验证码：<img alt="点击更换验证码" id="imgSerial"  style="" src="../Management/Common/VerifyImage.ashx" onclick="this.src='../Management/Common/VerifyImage.ashx?'+ Math.random();" />
                <asp:TextBox runat="server" MaxLength="4" TabIndex="3" ID="CheckCode"></asp:TextBox>
    <%--            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="验证码不能为空！"
                    Display="None" ControlToValidate="CheckCode">*</asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server"
                    PopupPosition="Right" TargetControlID="RequiredFieldValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>--%>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="验证码输入有误"
                    Display="None" ClientValidationFunction="SerialCheck" EnableClientScript="True"
                    EnableViewState="True" ControlToValidate="CheckCode" SetFocusOnError="True" ValidateEmptyText="True">*</asp:CustomValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server"
                    TargetControlID="CustomValidator1" PopupPosition="Right">
                </ajaxToolkit:ValidatorCalloutExtender>
            </div> 
            <div id="btn">
                <asp:ImageButton ID="login" runat="server" ImageUrl="~/images/logbtn.jpg" OnClick="login_Click"
                    TabIndex="4" Width="43" /><asp:ImageButton ID="rect" runat="server" ImageUrl="~/images/logbtn2.jpg" OnClick="rect_Click"
                    CausesValidation="False" TabIndex="5" />
            </div>
            <div id="home">
                <a href="../index.aspx">【返回首页】</a>
            </div>
        </div>
    </div>
 
    </form>
</body>
</html>
