<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PromptInfo.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Enterprise.PromptInfo"
    StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>信息提示界面</title>
    <style type="text/css">
        #pannelStyle
        {
            width: 100%;  
        }
        #fdStyle
        {
            width: 700px;
            height: 250px;
        }
        #divStyle
        {
            width: 600px;
            height: 200px;
            padding-top: 45px;
        }
        #divStyle p
        {
            text-indent: 2em;
            line-height: 2em;
            text-align: left;
        }
        a:hover
        {
            color: Red;
            text-decoration: underline;
        }
        a:link
        {
            color: #0033ff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="pannelStyle">
        <div align="center" style="padding-top: 45px;">
            <fieldset id="fdStyle">
                <legend style="font-size: 15px;">友情提示</legend>
                <div id="divStyle">
                    <div style="height: 150px;">
                        <p>
                            <asp:Label ID="Label1" runat="server">首先恭喜您注册成功，但您还不可以对项目进行报名。只有待您完成基本信息的填写并<b style="color:Red; font-size:15px;">提交</b>，然后等待管理员的审核通过，方可对项目报名。当您的信息<b style="color:Red; font-size:15px;">提交</b>后您无权再更改您的信息，如果您想更改您的信息，请与淮安市清河区小型工程招标网 联系，谢谢合作！</asp:Label>
                            <asp:Label ID="Label2" runat="server">您的帐户没有通过审核,具体原因请查看下方审核信息</asp:Label>
                            <asp:Label ID="Label3" runat="server">您的帐户被管理员禁用,具体原因请查看下方提示信息,并请您尽快与管理员取得联系</asp:Label>
                        </p>
                        <hr style="color: Blue;" />
                        <asp:Label ForeColor="Red" ID="LabelReason" runat="server"></asp:Label>
                    </div>
                    <div align="right">
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/Common/AlterUserInfo.aspx" >点击进行&nbsp;下一步</asp:HyperLink>
                    </div>
                </div>
            </fieldset></div>
    </div>
    </form>
</body>
</html>
