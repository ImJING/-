<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true"
    CodeBehind="EpseRegister.aspx.cs" Inherits="JSMSTC.InviteTender.EpseRegister"
    ValidateRequest="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>��ҵע��</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="JS/jquery.js" type="text/javascript"></script>

    <link href="CSS/register.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">

        //��֤�û�����ʼ
        function checkUserName(source, arguments) { 
             
            var innerText = $("#ctl00_ContentPlaceHolder1_txtloginname").attr("value");

            if (innerText != null) {

                if (innerText.length < 6 || innerText.length > 16) { 
                    arguments.IsValid = false;
                }
                else {
                    arguments.IsValid = true;
                }
            } 
        }
        //��֤�û�������  

        //��֤����ĳ��ȿ�ʼ 
        function checkpwd(source, arguments) {

            var innerText = $("#ctl00_ContentPlaceHolder1_txtpwd").attr("value"); 
            if (innerText != null) {
                if (innerText.length < 6 || innerText.length > 16) {
                    arguments.IsValid = false;
                }
                else {
                    arguments.IsValid = true;
                }
            }
        }
        //��֤����ĳ��Ƚ��� 

        //��֤�뿪ʼ
        function SerialCheck1(source, arguments) {

            var value; //��¼��ȡ��sessionֵ 
            var code = $("#ctl00_ContentPlaceHolder1_checkcode").attr("value");
            
            $.ajax({
                type: "get",
                url: "GetCODE.aspx",
                dataType: "text",
                data: { Action: "GetSession" },
                async: false,
                cache: false,
                success: function(sessionValue) {
                    value = sessionValue;
                }
            }); 
             
            if (value != null && code != null) {
                if (code.toString().toLowerCase() == value.toString().toLowerCase()) {
                    arguments.IsValid = true;
                }
                else {
                    arguments.IsValid = false;
                    document.getElementById('<%=checkcode.ClientID %>').value = ""; 
                    document.getElementById('imgSerial2').src = 'Management/Common/VerifyImage1.ashx?' + Math.random(); 
                }
            }
            else {
                arguments.IsValid = false;
            }
        }
        //��֤�����


        //�ж������Ƿ���ڿ�ʼ
        function CheckEmailIsExisted(source, arguments) {
            var result; //���ز�ѯ�Ľ�� 
            
            var email = $("#ctl00_ContentPlaceHolder1_txtemail").attr("value");

            if (email != null) {

                $.ajax({
                    type: "get",
                    url: "GetSessiovalue.aspx?Email=" + email.toString(),
                    dataType: "text",
                    data: { Action: "GetEmail" },
                    async: false,
                    cache: false,
                    success: function(sessionValue) {
                        result = sessionValue;
                    }
                });


                if (result == "yes") {
                    arguments.IsValid = false; //ע��������Ѿ�����
                }
                else {

                    arguments.IsValid = true; //ע�������δ����
                }
            }
        }
        //�ж������Ƿ���ڽ���


        //�ж���ҵ�Ƿ���ڿ�ʼ
//        function CheckEpseIsExisted(source, arguments) {
//            var result; //���ز�ѯ�Ľ��  
//            var username = $("#ctl00_ContentPlaceHolder1_txtusername").attr("value");

//            if (username != null) {

//                $.ajax({
//                    type: "get",
//                    url: "GetSessiovalue.aspx?UserName=" + username.toString(),
//                    dataType: "text",
//                    data: { Action: "GetUserName" },
//                    async: false,
//                    cache: false,
//                    success: function(sessionValue) {
//                        result = sessionValue;
//                    }
//                });

//                if (result == "yes") {
//                    arguments.IsValid = false; //��ҵ�Ѿ�����
//                }
//                else {

//                    arguments.IsValid = true; //��ҵδ����
//                }
//            }
//        }
        //�ж���ҵ�Ƿ���ڽ���

        //�ж��û����Ƿ���ڿ�ʼ
        function CheckLoginNameIsExisted(source, arguments) {
            var result; //���ز�ѯ�Ľ�� 
           
            var loginname = $("#ctl00_ContentPlaceHolder1_txtloginname").attr("value");

            if (loginname != null) {

                $.ajax({
                    type: "get",
                    url: "GetSessiovalue.aspx?LoginName=" + loginname.toString(),
                    dataType: "text",
                    data: { Action: "GetLoginName" },
                    async: false,
                    cache: false,
                    success: function(sessionValue) {
                        result = sessionValue;
                    }
                });

                if (result == "yes") {
                    arguments.IsValid = false; //��¼���Ѿ�����
                }
                else {

                    arguments.IsValid = true; //��¼��δ����
                }
            }
        }
        //�ж��û����Ƿ���ڽ���
        
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%;">
        <div style="width: 100%;" align="center">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 1000px; height: 485px;">
                <tr>
                    <td class="spanStyle">
                        *
                    </td>
                    <td align="center">
                        <span style="width: 75px;">�û���:</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtloginname" runat="server" SkinID="TextBox" Width="275px" Wrap="False"
                            MaxLength="20" Height="20px"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtloginname"
                            Display="None" ErrorMessage="�û����ĳ���Ϊ6��16λ!" SetFocusOnError="True" ValidationGroup="rginfo"
                            ClientValidationFunction="checkUserName">*</asp:CustomValidator>
                        <asp:ValidatorCalloutExtender ID="CustomValidator3_ValidatorCalloutExtender" runat="server"
                            TargetControlID="CustomValidator3">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtloginname"
                            Display="None" ErrorMessage="�û�������Ϊ��!" SetFocusOnError="True" ValidationGroup="rginfo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender"
                            runat="server" TargetControlID="RequiredFieldValidator6">
                        </asp:ValidatorCalloutExtender>
                        <asp:CustomValidator ID="CustomValidator6" runat="server" ControlToValidate="txtloginname"
                            ErrorMessage="�û����Ѵ���!" ValidationGroup="rginfo" SetFocusOnError="True" ClientValidationFunction="CheckLoginNameIsExisted"
                            Display="None">*</asp:CustomValidator>
                        <asp:ValidatorCalloutExtender ID="CustomValidator6_ValidatorCalloutExtender" runat="server"
                            TargetControlID="CustomValidator6">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="promptinfo">
                        �û���Ϊ������λ������Ϊ6~16λ!
                    </td>
                </tr>
                <tr>
                    <td class="spanStyle">
                        *
                    </td>
                    <td align="center">
                        <span>�� ��:</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtpwd" runat="server" SkinID="TextBox" Width="275px" Wrap="False" Text=""
                            MaxLength="16" TextMode="Password" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpwd"
                            ErrorMessage="���벻��Ϊ��!" SetFocusOnError="True" ValidationGroup="rginfo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender"
                            runat="server" TargetControlID="RequiredFieldValidator7">
                        </asp:ValidatorCalloutExtender>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="���볤��Ϊ6��16λ!"
                            ControlToValidate="txtpwd" Display="None" SetFocusOnError="True" ValidationGroup="rginfo"
                            ValidateEmptyText="True" ClientValidationFunction="checkpwd">*</asp:CustomValidator>
                        <asp:ValidatorCalloutExtender ID="CustomValidator1_ValidatorCalloutExtender" runat="server"
                            TargetControlID="CustomValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="promptinfo">
                        ����Ϊ������λ,����Ϊ6~16λ!
                    </td>
                </tr>
                <tr>
                    <td class="spanStyle">
                        *
                    </td>
                    <td align="center">
                        <span>ȷ������:</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtcheckpwd" runat="server" SkinID="TextBox" Width="275px" TextMode="Password" Text=""
                            MaxLength="16" Height="20px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" ValidationGroup="rginfo" runat="server"
                            ControlToCompare="txtpwd" ControlToValidate="txtcheckpwd" Display="None" ErrorMessage="������������벻һ��!"
                            SetFocusOnError="True">*</asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" runat="server"
                            TargetControlID="CompareValidator1">
                        </asp:ValidatorCalloutExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcheckpwd"
                            Display="None" ErrorMessage="���벻��Ϊ��!" SetFocusOnError="True" ValidationGroup="rginfo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender"
                            runat="server" TargetControlID="RequiredFieldValidator8">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="spanStyle">
                        *
                    </td>
                    <td align="center">
                        <span>��ҵ����:</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtusername" runat="server" SkinID="TextBox" Width="275px" Wrap="False"
                            MaxLength="35" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtusername"
                            Display="None" ErrorMessage="��ҵ���Ʋ���Ϊ��!" SetFocusOnError="True" ValidationGroup="rginfo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender"
                            runat="server" TargetControlID="RequiredFieldValidator9">
                        </asp:ValidatorCalloutExtender>
                        <%--<asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="txtusername"
                            Display="None" ErrorMessage="��ҵ�Ѵ���!" ValidationGroup="rginfo" ClientValidationFunction="CheckEpseIsExisted">*</asp:CustomValidator>
                        <asp:ValidatorCalloutExtender ID="CustomValidator5_ValidatorCalloutExtender" runat="server"
                            TargetControlID="CustomValidator5">
                        </asp:ValidatorCalloutExtender>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="promptinfo">
                        ��ҵ����Ϊ������λ!
                    </td>
                </tr>
                <tr>
                    <td class="spanStyle">
                        *
                    </td>
                    <td align="center">
                        Ӫҵִ��:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txt_bslisence" runat="server" Width="275px" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_bslisence"
                            Display="None" ErrorMessage="Ӫҵִ�ղ���Ϊ��!" SetFocusOnError="True" ValidationGroup="rginfo">*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender"
                            runat="server" TargetControlID="RequiredFieldValidator10">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="promptinfo">
                        Ӫҵִ�ղ���Ϊ��!
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        <span>��ҵ��ַ: </span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtaddr" runat="server" SkinID="TextBox" Width="275px" Wrap="False"
                            MaxLength="50" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        ��������:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtemail" runat="server" SkinID="TextBox" Width="275px" Wrap="False"
                            MaxLength="50" Height="20px"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server" ControlToValidate="txtemail" Display="None" ErrorMessage="����ĸ�ʽ����!"
                                SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ValidationGroup="rginfo">*</asp:RegularExpressionValidator><asp:ValidatorCalloutExtender
                                    ID="RegularExpressionValidator1_ValidatorCalloutExtender" runat="server" TargetControlID="RegularExpressionValidator1">
                                </asp:ValidatorCalloutExtender>
                        <asp:CustomValidator ID="CustomValidator4" runat="server" ValidationGroup="rginfo"
                            ControlToValidate="txtemail" Display="None" ErrorMessage="���������ѱ�ռ��!" ClientValidationFunction="CheckEmailIsExisted">*</asp:CustomValidator><asp:ValidatorCalloutExtender
                                ID="CustomValidator4_ValidatorCalloutExtender" runat="server" TargetControlID="CustomValidator4">
                            </asp:ValidatorCalloutExtender>
                    </td>
                </tr> 
                 <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        �绰����:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtphone" runat="server" SkinID="TextBox" Width="275px" Wrap="False"
                            Height="20px" MaxLength="15"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        <span>����: </span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txt_fax" runat="server" Width="275px" Wrap="False" SkinID="TextBox"
                            MaxLength="20" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        <span>��֤��: </span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="checkcode" runat="server" SkinID="TextBox" Width="75px" MaxLength="4"
                            Height="20px"></asp:TextBox>&nbsp;&nbsp;<img alt="���������֤��" style="cursor: pointer;" id="imgSerial2"
                                src="Management/Common/VerifyImage1.ashx" onclick="this.src='Management/Common/VerifyImage1.ashx?'+Math.random();" /><span
                                    style="font-size: 10px; color: #1E50A2">���ͼƬ����</span>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="rginfo"
                            ErrorMessage="��֤�벻��Ϊ��!" ControlToValidate="checkcode" Display="None">*</asp:RequiredFieldValidator><asp:ValidatorCalloutExtender
                                ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator5"
                                PopupPosition="TopLeft">
                            </asp:ValidatorCalloutExtender>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="���������֤������!"
                            ControlToValidate="checkcode" ValidationGroup="rginfo" ClientValidationFunction="SerialCheck1"
                            Display="None">*</asp:CustomValidator><asp:ValidatorCalloutExtender ID="CustomValidator2_ValidatorCalloutExtender"
                                runat="server" TargetControlID="CustomValidator2" 
                            PopupPosition="TopLeft">
                            </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;">
                    </td>
                    <td>
                    </td>
                    <td align="left">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/btn_submit.jpg"
                            OnClick="ImageButton1_Click1" ValidationGroup="rginfo" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
        </div>
    </div>
</asp:Content>
