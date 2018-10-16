<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaseRegisterInfor.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Common.BaseRegisterInfor" StylesheetTheme="HAM1.0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户信息修改</title>
    <style type="text/css">
        .align
        {
            vertical-align: middle;
            text-align: center;
        }
        .head_tb
        {
            margin-top: 15px;
            width: 100%;
        }
        .head_td
        {
            height: 30px;
            width: 160px;
        }
        .left-td
        {
            width: 400px;
            padding-left: 250px;
            height: 35px;
        }
        .right-td
        {
            width: 800px;
            padding-right: 200px;
            height: 35px;
        }
        .bottom
        {
            height: 30px;
            padding-left: 750px;
        }
        .text_a
        {
            text-align:right;
            width: 100px;
        }
        .M_top
        {
            margin-top:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1000px; margin-left: 35px;">
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" 
            OnNextButtonClick="Unnamed1_NextButtonClick" DisplaySideBar="False" 
            FinishCompleteButtonText="提交" onfinishbuttonclick="Wizard1_FinishButtonClick" 
          >
            <StartNavigationTemplate>
              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="保存" 
                    Width="50px" />
                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                    Text="下一步" />
                
            </StartNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="基本信息维护">
                    <div style="width: 100%;">
                        <table class="head_tb">
                            <tr>
                                <td class="head_td">
                                    基本信息维护
                                </td>
                              <td style="color: Red; text-align: right; width: 750px; font-size: 15px;">
                                *<asp:Label ID="lb_rgstate" runat="server" Text="Label"></asp:Label>
                              </td>
                           
                                <td>
                                   
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; margin-top: 15px;">
                            <tr style="height: 30px;">
                                <td style="width: 130px;">
                                    用&nbsp;户&nbsp;名：
                                </td>
                                <td align="left" style="width: 280px;">
                                    <asp:TextBox ID="txt_loginname" runat="server" MaxLength="20" Width="200px" Wrap="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_loginname"
                                        ErrorMessage="用户名不能为空!" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="text_a">
                                    法&nbsp;&nbsp;&nbsp;人：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_legalp" runat="server" Width="200px" Wrap="False" SkinID="TextBox"
                                        MaxLength="14"></asp:TextBox>
                                </td>
                                <td style="width: 330px;">
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    企业名称：
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_username" runat="server" MaxLength="50" Width="200px" Wrap="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_username"
                                        ErrorMessage="企业名称不能为空!" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="text_a">
                                    企业性质：
                                </td>
                                <td align="right">
                                    <asp:DropDownList ID="drop_natrue" runat="server" Width="207px">
                                        <asp:ListItem Value="1">国企</asp:ListItem>
                                        <asp:ListItem Value="2">私企</asp:ListItem>
                                        <asp:ListItem Value="3">外企</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drop_natrue"
                                        ErrorMessage="企业性质不能为空!" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    企业类型：
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddl_category" runat="server" Width="207px">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_category"
                                        ErrorMessage="企业类型不能为空!">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="text_a">
                                    企业地址：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_addr" runat="server" Width="200px" MaxLength="80"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    电话号码：
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_phone" runat="server" MaxLength="15" Width="200px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                                        Display="Dynamic" ErrorMessage="输入的电话号码不合法" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)"
                                        SetFocusOnError="True">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="text_a">
                                    电子邮箱：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_email" runat="server" Width="200px" MaxLength="45"> </asp:TextBox>
                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                                        ErrorMessage="您输入的邮箱不合法" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        Display="Dynamic" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    资&nbsp;&nbsp;&nbsp;&nbsp; 质：
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddl_ct" runat="server" Width="207px">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_ct"
                                        ErrorMessage="资质不能为空!" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="text_a">
                                    营业执照：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_BslisenceID" runat="server" Width="200px" Wrap="False" SkinID="TextBox"
                                        MaxLength="16"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    传&nbsp;&nbsp;&nbsp;&nbsp; 真：
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_fax" runat="server" Width="200px" Wrap="False" SkinID="TextBox"
                                        MaxLength="16"></asp:TextBox>
                                </td>
                                <td class="text_a">
                                    管理人员数量：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_mp" runat="server" Width="200px" Wrap="False" SkinID="TextBox"
                                        MaxLength="5"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    职工人数：
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_employeenum" runat="server" Width="200px" Wrap="False" SkinID="TextBox"
                                        MaxLength="5"></asp:TextBox>
                                </td>
                                <td class="text_a">
                                    技术人员数量：
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txt_tgy" runat="server" Width="200px" Wrap="False" MaxLength="5"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    主营业务:
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txt_mainpro" runat="server" MaxLength="120" Rows="7" SkinID="TextBox"
                                        TextMode="MultiLine" Width="750px" Wrap="False"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    公司简介:
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txt_statement" runat="server" Columns="30" MaxLength="120" Rows="7"
                                        SkinID="TextBox" TextMode="MultiLine" Width="750px"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="项目经理及核心技术人员">
                        <div class="M_top">
                        
                        </div>
                       <table class="head_tb">
                     <tr>
                    <td class="head_td">项目经理及核心技术人员：
                       </td>
                      <td>
                       
                     </td>
                    <td>
                    </td>
                </tr>
             </table>
                        <table>
                            <tr>
                                <td class="left-td">
                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
                                </td>
                                <td class="right-td">
                                    <asp:TextBox runat="server" CssClass="align" Width="100px" ID="txtname"></asp:TextBox><asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator3" runat="server" ErrorMessage="姓名不可为空" ControlToValidate="txtname">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：
                                </td>
                                <td class="right-td">
                                    <asp:TextBox runat="server" Wrap="False" Width="100px" ID="txtpos"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：
                                </td>
                                <td class="right-td">
                                    <asp:TextBox runat="server" MaxLength="3" Width="45px" ID="txtage"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
                                </td>
                                <td class="right-td">
                                    <asp:DropDownList runat="server" Width="50px" ID="DLsex">
                                        <asp:ListItem Value="1">男</asp:ListItem>
                                        <asp:ListItem Value="2">女</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    联系方式：
                                </td>
                                <td class="right-td">
                                    <asp:TextBox runat="server" MaxLength="45" Wrap="False" Width="120px" ID="txtcontact"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    资&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质：
                                </td>
                                <td class="right-td">
                                    <asp:DropDownList runat="server" SkinID="DropDownList" Width="100px" ID="dp_editcp">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="left-td">
                                    执业资格：
                                </td>
                                <td class="right-td">
                                    <asp:TextBox runat="server" Wrap="False" SkinID="TextBox" Width="100px" ID="txtlisencep"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <%-- <div class="bottom">
                     <asp:Button ID="BtnSaveLeader" runat="server" Text="保存" /></div>
                 </div>--%>
               
                    <table class="head_tb">
                     <tr>
                    <td class="head_td">设备：
                       </td>
                      <td>
                   
                     </td>
                    <td>
                    </td>
                </tr>
            </table>
                    <table>
                        <tr>
                            <td class="left-td">
                                设备名称：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="45" Wrap="False" Width="100px" ID="TextDevice"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator7" runat="server" ErrorMessage="设备不能为空" ControlToValidate="TextDevice">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                品牌型号：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="45" Wrap="False" Width="100px" ID="txtmodel"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="5" Wrap="False" Width="50px" ID="txtacount"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator8" runat="server" ErrorMessage="数量不能为空" ControlToValidate="txtacount">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" Wrap="False" Width="50px" ID="txtprice"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                使用年限：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="5" Width="70px" ID="txtyear"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="45" Width="80px" ID="txtplace"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="left-td">
                                主要技术参数：
                            </td>
                            <td class="right-td">
                                <asp:TextBox runat="server" MaxLength="45" Width="100px" ID="txtpara"></asp:TextBox>
                            </td>
                        </tr>
                        <%--<tr>
                 <td class="bottom" colspan="3">
                     <asp:Button ID="BtnSave" runat="server" Text="保存" />
                     <asp:Button ID="BtnHand" runat="server" Text="提交" /></td> 
                    </tr>--%>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" 
                    CommandName="MovePrevious" Text="上一步" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                    Text="下一步" />
            </StepNavigationTemplate>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
