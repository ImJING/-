<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterUserInfo.aspx.cs"
    Inherits="JSMSTC.InviteTender.Management.Common.AlterUserInfo" StylesheetTheme="HAM1.0" %>

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
            width: 123px;
        }
        .tdtitle
        {
            padding-left: 15px;
            height: 20px;
            font-size: 12px;
            font-weight: bold;
            text-align: left;
            background-color: #ECECFF;
            vertical-align: middle;
        }
        .tdlabel
        {
            text-align: left;
            width: 160px;
            padding-left: 14px;
        }
        .tdlabel2
        {
            width: 160px;
            text-align: center;
        }
        .tdlabel3
        {
            text-indent: 45px;
        }
        .tdcontact
        {
            width: 200px;
        }
        .clear
        {
            clear: both;
        }
        .tdList table
        {
            margin-top: 5px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-left: 45px; width: 1024px;">
        <table class="tdList" style="width: 100%; margin-top: 5px;">
            <tr style="height: 50px;">
                <td>
                    <div style="float: left;">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Management/images/loginin_icon_1.gif" />
                    </div>
                    <div>
                        <b>基本信息维护</b> <span style="font-size: 14px; font-weight: bolder; color: red; float: right">
                            <asp:Label ID="lb_rgstate" runat="server" Text="Label">*企业信息提交审核后将不可更改，请填写真实信息</asp:Label></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="width: 100%; text-align: center;">
                        <asp:Wizard runat="server" ActiveStepIndex="0" ID="Wizard1" DisplaySideBar="False"
                            Width="100%" OnNextButtonClick="Wizard1_NextButtonClick" OnPreviousButtonClick="Wizard1_PreviousButtonClick">
                            <StartNavigationTemplate>
                                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" SkinID="Button"
                                    Width="60px" Text="下一步" />
                            </StartNavigationTemplate>
                            <WizardSteps>
                                <asp:WizardStep ID="WizardStepBaseInfo" Title="基本信息" runat="server">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 300px;
                                        text-align: left;">
                                        <tr>
                                            <td class="tdtitle" colspan="4">
                                                基本信息
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdlabel">
                                                用&nbsp; 户 名:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_loginname" runat="server" SkinID="TextBox" MaxLength="20" Width="200px"></asp:TextBox>
                                                <span style="color: Red;">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空!"
                                                    ControlToValidate="txt_loginname" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="tdlabel">
                                                法&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;人:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_legalp" runat="server" SkinID="TextBox" MaxLength="14" Width="200px"
                                                    Wrap="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdlabel">
                                                企业名称:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_username" runat="server" SkinID="TextBox" MaxLength="50" Width="200px"></asp:TextBox>
                                                <span style="color: Red;">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="企业名称不能为空!"
                                                    ControlToValidate="txt_username" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="tdlabel">
                                                企 业 性 质:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_nature" runat="server" SkinID="DropDownList" Width="207px">
                                                    <asp:ListItem Value="1">国企</asp:ListItem>
                                                    <asp:ListItem Value="2">私企</asp:ListItem>
                                                    <asp:ListItem Value="3">外企</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td class="tdlabel">
                                                企业类型:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_category" runat="server" SkinID="DropDownList" Width="207px">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="tdlabel">
                                                资&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_ct" runat="server" SkinID="DropDownList" Width="207px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>--%>
                                        <tr>
                                            <td class="tdlabel">
                                                电话号码:
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txt_phone" runat="server" SkinID="TextBox" MaxLength="15" Width="200px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                                                    ErrorMessage="电话号码格式不正确!" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)"
                                                    SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                            <td class="tdlabel">
                                                电 子 邮 箱:
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txt_email" runat="server" SkinID="TextBox" MaxLength="50" Width="200px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                                                    Display="Dynamic " ErrorMessage="电子邮件格式不正确!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdlabel">
                                                企 业 地 址:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_addr" runat="server" Width="200px" SkinID="TextBox" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td class="tdlabel">
                                                营 业 执 照:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_BslisenceID" runat="server" SkinID="TextBox" MaxLength="16"
                                                    Width="200px" Wrap="False"></asp:TextBox>
                                                <span style="color: Red;">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_BslisenceID"
                                                    ErrorMessage="营业执照不能为空!" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdlabel">
                                                传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_fax" runat="server" SkinID="TextBox" Width="200px" Wrap="False"
                                                    MaxLength="16"> </asp:TextBox>
                                            </td>
                                            <td class="tdlabel">
                                                管理人员人数:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_manage" runat="server" SkinID="TextBox" Width="200px" Wrap="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdlabel">
                                                职工人数:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_employeenum" runat="server" SkinID="TextBox" Width="200px" Wrap="False"></asp:TextBox>
                                            </td>
                                            <td class="tdlabel">
                                                技术人员人数:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_tgy" runat="server" SkinID="TextBox" Width="200px" Wrap="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStepCT" Title="企业资性">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 300px;
                                        border: soild 1px #ECECFF;">
                                        <tr>
                                            <td class="tdtitle">
                                                企业资质<span style=" color:Red;">(请至少增加一种企业资质)</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:GridView ID="GridViewCT" runat="server" DataKeyNames="Id" SkinID="GridView"
                                                    BackColor="White" BorderColor="#EFE6F7" Width="100%" BorderStyle="Solid" BorderWidth="1px"
                                                    CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False"
                                                    Font-Size="0.9em" ShowFooter="True" OnPreRender="GridViewCT_PreRender" OnRowCancelingEdit="GridViewCT_RowCancelingEdit"
                                                    OnRowCommand="GridViewCT_RowCommand" OnRowDataBound="GridViewCT_RowDataBound"
                                                    OnRowDeleting="GridViewCT_RowDeleting" OnRowEditing="GridViewCT_RowEditing" OnRowUpdating="GridViewCT_RowUpdating">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="企业类型">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="ddl_Ecategory" runat="server" SkinID="DropDownList" Width="207px">
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:DropDownList ID="ddl_Fcategory" runat="server" SkinID="DropDownList" Width="207px">
                                                                </asp:DropDownList>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Labelcategory" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label>
                                                                <asp:HiddenField ID="HiddenFieldcategory" runat="server" Value='<%# Eval("ID")%>' />
                                                            </ItemTemplate>
                                                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="资质级别">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="ddl_Ect" runat="server" SkinID="DropDownList" Width="207px">
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:DropDownList ID="ddl_Fct" runat="server" SkinID="DropDownList" Width="207px">
                                                                </asp:DropDownList>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("CaptitudeName")%>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="操作">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update" Text="更新"
                                                                    Width="16px" CommandArgument='<%# Eval("ID")%>' CausesValidation="False" />
                                                                |<asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" Text="取消" CausesValidation="False" />
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Add" Text="新增企业资质" CausesValidation="False" />
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" Text="编辑" CausesValidation="False" />
                                                                |<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id") %>'
                                                                    Text="删除" OnClientClick="return confirm('确定要删除吗?');" CausesValidation="False" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" Font-Size="0.9em" />
                                                    <PagerStyle BackColor="#EFE6F7" ForeColor="Black" HorizontalAlign="Center" Font-Size="0.9em" />
                                                    <SelectedRowStyle BackColor="#B2C3E1" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
                                                    <HeaderStyle BackColor="#41519A" Font-Bold="True" ForeColor="White" Font-Size="1em" />
                                                    <EmptyDataTemplate>
                                                        <div style="width: 100%; height: 45px;" align="center">
                                                            没有数据!
                                                        </div>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStepUser" Title="核心技术人员及设备">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 300px;">
                                        <tr>
                                            <td class="tdtitle">
                                                项目经理及核心技术人员<span style=" color:Red;">(请至少增加一位项目经理,上传图片大小请小于100KB,格式为.jpg,.gif,.bmp,.png)</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:GridView ID="GridView2" runat="server" DataKeyNames="Id" SkinID="GridView" BackColor="White"
                                                    BorderColor="#EFE6F7" Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                                                    ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" Font-Size="0.9em"
                                                    OnRowEditing="GridView2_RowEditing" OnRowCommand="GridView2_RowCommand" ShowFooter="True"
                                                    OnPreRender="GridView2_PreRender" OnRowDeleting="GridView2_RowDeleting" OnRowUpdating="GridView2_RowUpdating"
                                                    OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDataBound="GridView2_RowDataBound">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="姓名">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' MaxLength="16"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtname" runat="server" MaxLength="16" Width="85px"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                                <asp:HiddenField ID="HiddenField4" runat="server" Value='<%# Eval("Id") %>' />
                                                            </ItemTemplate>
                                                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="职务">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Position") %>' MaxLength="17"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtpos" runat="server" MaxLength="17" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Position") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="资质">
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="dp_editcp" runat="server" SkinID="DropDownList" Width="95px">
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:DropDownList ID="dp_addcp" runat="server" SkinID="DropDownList" Width="95px">
                                                                </asp:DropDownList>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CaptitudeName") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="执业资格">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox4" runat="server" MaxLength="45" Wrap="False" Width="85px"
                                                                    Text='<%# Bind("LisenceCp") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtlisencep" runat="server" MaxLength="45" Wrap="False" Width="85px"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("LisenceCp") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="性别">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("sex") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:DropDownList ID="DropDownList2" runat="server" Width="50px" SelectedValue='<%# Bind("sex") %>'>
                                                                    <asp:ListItem Value="男">男</asp:ListItem>
                                                                    <asp:ListItem Value="女">女</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                                                                    <asp:ListItem Value="1">男</asp:ListItem>
                                                                    <asp:ListItem Value="2">女</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </FooterTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="年龄">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Age") %>' Width="50px"
                                                                    Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtage" runat="server" Width="50px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="联系方式">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Contact") %>' MaxLength="40"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtcontact" runat="server" MaxLength="40" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# GetCuString(Convert.ToString(Eval("Contact")),10) %>'
                                                                    ToolTip='<%# Eval("Contact") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="证书">
                                                            <EditItemTemplate>
                                                                <asp:HiddenField ID="HiddenFieldID" Value='<%# Eval("ID") %>' runat="server" />
                                                                <asp:HiddenField ID="HiddenFieldCertificate" Value='<%# Eval("Certificate") %>' runat="server" />
                                                                <asp:FileUpload ID="FileUploadCertificate" runat="server" />
                                                                <asp:Label ID="LabelCertificate" runat="server" Visible="false"></asp:Label>
                                                                <asp:HyperLink ID="HyperLinkImageShow" runat="server">点击查看证书</asp:HyperLink>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:FileUpload ID="FileUploadCertificate" runat="server" />
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:HiddenField ID="HiddenFieldCertificate" Value='<%# Eval("Certificate") %>' runat="server" />
                                                                <asp:HiddenField ID="HiddenFieldID" Value='<%# Eval("ID") %>' runat="server" />
                                                                <asp:HyperLink ID="HyperLinkImageShow" Target="_blank" runat="server">点击查看证书</asp:HyperLink>
                                                                <asp:Label ID="LabelCertificate" runat="server" Visible="false" Text="没有上传证书"></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="操作">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update" Text="更新" Width="16px"
                                                                    CommandArgument='<%# Eval("Id") %>' CausesValidation="False" />
                                                                |<asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" Text="取消" CausesValidation="False" />
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Add" Text="新增项目经理" CausesValidation="False" />
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" Text="编辑" CausesValidation="False" />
                                                                |<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" CommandArgument='<% # Eval("Id") %>'
                                                                    Text="删除" OnClientClick="return confirm('确定要删除吗?');" CausesValidation="False" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" Font-Size="0.9em" />
                                                    <PagerStyle BackColor="#EFE6F7" ForeColor="Black" HorizontalAlign="Center" Font-Size="0.9em" />
                                                    <SelectedRowStyle BackColor="#B2C3E1" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
                                                    <HeaderStyle BackColor="#41519A" Font-Bold="True" ForeColor="White" Font-Size="1em" />
                                                    <EmptyDataTemplate>
                                                        <div style="width: 100%; height: 45px;" align="center">
                                                            没有数据!
                                                        </div>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStepsb" Title="设备">
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; height: 300px;">
                                        <tr>
                                            <td class="tdtitle">
                                                设备
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#EFE6F7"
                                                    Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                                                    GridLines="Vertical" AutoGenerateColumns="False" Font-Size="0.9em" OnRowDeleting="GridView1_RowDeleting"
                                                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True"
                                                    OnRowCommand="GridView1_RowCommand" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                                    OnPreRender="GridView1_PreRender">
                                                    <FooterStyle BackColor="#CCCCCC" Font-Size="0.9em" />
                                                    <PagerStyle BackColor="#EFE6F7" ForeColor="Black" HorizontalAlign="Center" Font-Size="0.9em" />
                                                    <SelectedRowStyle BackColor="#B2C3E1" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
                                                    <HeaderStyle BackColor="#41519A" Font-Bold="True" ForeColor="White" Font-Size="1em" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="设备名称">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DeviceName") %>' MaxLength="45"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtname" runat="server" MaxLength="40" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("DeviceName") %>'></asp:Label>
                                                                <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("Id") %>' />
                                                            </ItemTemplate>
                                                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            <HeaderStyle Width="90px" Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="品牌型号">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DeciveModel") %>' MaxLength="45"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtmodel" runat="server" MaxLength="40" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DeciveModel") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="产地">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DecPlace") %>' MaxLength="40"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtplace" runat="server" MaxLength="40" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# GetCuString(Convert.ToString(Eval("DecPlace")),3) %>'
                                                                    ToolTip='<%# Eval("DecPlace") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="True" />
                                                            <ItemStyle Width="90px" Wrap="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="数量">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("count") %>' Width="50px"
                                                                    Wrap="False" MaxLength="40"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtacount" runat="server" Width="50px" Wrap="False" MaxLength="40"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("count") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="价格">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Price") %>' Width="50px"
                                                                    Wrap="False" MaxLength="40"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtprice" runat="server" Width="50px" Wrap="False" MaxLength="40"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="False" />
                                                            <ItemStyle Width="50px" Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="使用年限">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox8" runat="server" Width="85px" Wrap="False" Text='<%# Bind("UsedYear") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtyear" runat="server" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("UsedYear") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="主要参数">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MainParameter") %>' MaxLength="80"
                                                                    Width="85px" Wrap="False"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:TextBox ID="txtpara" runat="server" MaxLength="80" Width="85px" Wrap="False"></asp:TextBox>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# GetCuString(Convert.ToString(Eval("Mainparameter")),3) %>'
                                                                    ToolTip='<%# Eval("Mainparameter") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="操作">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>'
                                                                    CommandName="Update" Text="更新" CausesValidation="false" />
                                                                |<asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" EnableTheming="False"
                                                                    EnableViewState="False" Text="取消" CausesValidation="false" />
                                                            </EditItemTemplate>
                                                            <FooterTemplate>
                                                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Add" Text="新增设备" CausesValidation="false" />
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="编辑" CausesValidation="false" />
                                                                |<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>'
                                                                    CommandName="Delete" Text="删除" OnClientClick="return confirm('确定要删除吗?');" CausesValidation="false" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" Wrap="False" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <EmptyDataTemplate>
                                                        <div style="width: 100%; height: 45px;" align="center">
                                                            没有数据!
                                                        </div>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStepIntro" Title="资质范围及企业简介">
                                    <table cellpadding="0" cellspacing="0" style="width: 100%; min-width: 70%; height: 300px;
                                        text-align: left">
                                        <tr>
                                            <td class="tdtitle">
                                                资质范围
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txt_statement" runat="server" SkinID="TextBox" Height="130px" TextMode="MultiLine"
                                                    Width="99%" MaxLength="150"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                企业简介
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txt_mainpro" runat="server" SkinID="TextBox" TextMode="MultiLine"
                                                    Width="99%" MaxLength="150" Height="130px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStepFile" Title="资质上传">
                                    <table cellpadding="0" cellspacing="0" style="width: 100%; min-width: 70%; height: 300px;
                                        text-align: left">
                                        <tr>
                                            <td class="tdtitle" colspan="3">
                                                资质上传<span style=" color:Red;">(请上传小于100KB的图片,格式为.jpg,.gif,.bmp,.png)</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 150px;">
                                                营业执照
                                            </td>
                                            <td style="width: 800px;">
                                                <table>
                                                    <tr>
                                                        <td colspan="2">
                                                            <a href="../../ImageView.aspx?imageurl=<%=URL1 %>" target="_blank">
                                                                <img runat="server" width="120" height="100" id="img1" /></a>(点击查看原图)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:FileUpload ID="FileUploadBusinessLicense" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="ButtonBusinessLicense" runat="server" OnClick="ButtonBusinessLicense_Click"
                                                                Text="上传" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                资质证书一
                                            </td>
                                            <td style="width: 800px;">
                                                <table>
                                                    <tr>
                                                        <td colspan="2">
                                                            <a href="../../ImageView.aspx?imageurl=<%=URL2 %>" target="_blank">
                                                                <img runat="server" width="120" height="100" id="img2" /></a>(点击查看原图)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:FileUpload ID="FileUploadLICENSE" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="ButtonLICENSE" runat="server" OnClick="ButtonLICENSE_Click" Text="上传" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                资质证书二
                                            </td>
                                            <td style="width: 800px;">
                                                <table>
                                                    <tr>
                                                        <td colspan="2">
                                                            <a href="../../ImageView.aspx?imageurl=<%=URL21 %>" target="_blank">
                                                                <img runat="server" width="120" height="100" id="img21" /></a>(点击查看原图)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:FileUpload ID="FileUploadLICENSE1" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="ButtonLICENSE1" runat="server" OnClick="ButtonLICENSE1_Click" Text="上传" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                资质证书三
                                            </td>
                                            <td style="width: 800px;">
                                                <table>
                                                    <tr>
                                                        <td colspan="2">
                                                            <a href="../../ImageView.aspx?imageurl=<%=URL22 %>" target="_blank">
                                                                <img runat="server" width="120" height="100" id="img22" /></a>(点击查看原图)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:FileUpload ID="FileUploadLICENSE2"  runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="ButtonLICENSE2" runat="server" OnClick="ButtonLICENSE2_Click" Text="上传" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                安全生产许可证
                                            </td>
                                            <td style="width: 400px;">
                                                <table>
                                                    <tr>
                                                        <td colspan="2">
                                                            <a href="../../ImageView.aspx?imageurl=<%=URL3 %>" target="_blank">
                                                                <img runat="server" width="120" height="100" id="img3" /></a>(点击查看原图)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:FileUpload ID="FileUploadSPP" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="ButtonSPP" runat="server" OnClick="ButtonSPP_Click" Text="上传" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                            </WizardSteps>
                            <FinishNavigationTemplate>
                                <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" SkinID="Button"
                                    Width="60px" CommandName="MovePrevious" Text="上一步" />&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="ButtonSave" runat="server" OnClick="ButtonSave_Click" SkinID="Button"
                                    Text="保  存" Width="60px" />
                                &nbsp;&nbsp;
                                <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" OnClientClick="return confirm('信息一旦提交就不能再次修改，您确定要提交吗?');"
                                    SkinID="Button" Text="提  交" Width="60px" />
                            </FinishNavigationTemplate>
                            <StepNavigationTemplate>
                                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious"
                                    SkinID="Button" Width="60px" Text="上一步" />
                                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="下一步"
                                    SkinID="Button" Width="60px" />
                            </StepNavigationTemplate>
                        </asp:Wizard>
                    </div>
                </td>
            </tr>
        </table>
        <div class="clear">
        </div>
    </div>
    </form>
</body>
</html>
