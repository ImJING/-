<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EpseView.aspx.cs" Inherits="JSMSTC.InviteTender.Management.Government.EpseView"
    StylesheetTheme="HAM1.0" %>

<%@ Import Namespace="JSMSTC.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>企业审核状态</title>

    <script src="../../JS/jquery.js" type="text/javascript"></script>

    <link href="../../CSS/tabControlstyle.css" rel="stylesheet" type="text/css" />

    <script src="../../JS/TabControl.js" type="text/javascript"></script>

    <style type="text/css">
        .edtStyle
        {
            width: 100%;
        }
        #td_head
        {
            height: 20px;
        }
        .tdOdd
        {
            width: 90px;
            font-size: 13px;
            text-align: left;
            line-height: 20px;
            font-weight: bold;
        }
        .tdEven
        {
            width: 200px;
            text-align: left;
            font-size: 13px;
            color: black;
        }
        .legendTxt
        {
            font-size: 13px;
            font-weight: bold;
            padding-left: 20px;
        }
        .fieldset_Style1
        {
            width: 900px;
        }
        .td_innerempty
        {
            height: 15px;
        }
        .gird1
        {
            text-align: center;
        }
        .clear
        {
            clear: both;
        }
        .txtstyle
        {
            width: 98%;
        }
        .td_change
        {
            width: 100px;
        }
        .tdList table
        {
            margin-top: 5px !important;
        }
        
    </style>

    <script type="text/javascript">
        function LoadData() {
            var td = document.getElementById('rp_win');
            if (td != null) {
                if (!td.hasChildNodes()) {
                    td.innerHTML = "<div style='width:100%; text-align:center; height:45px; line-height:45px;'>没有数据!</div>";
                }
            }
        } 
    </script>

</head>
<body onload="LoadData();">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="tdList"  style="width: 1024px; padding-left: 45px;">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; margin-top: 5px">
            <tr style="text-align: left; height: 45px;">
                <td style="font-weight: bold; font-size: 14px; width: 75%;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Management/images/loginin_icon_1.gif"
                        Width="13px" Height="13" />
                    <asp:Label ID="Label8" runat="server" Text="企业详情"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_epseState" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
                <td align="center">
                    <asp:HyperLink ID="hl_back" runat="server">返  回</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div id="Tab1">
            <div class="Menubox">
                <ul runat="server">
                    <li id="one1" onclick="setTab('one',1,8)" class="hover" style="width: 116px">基本信息</li>
                    <li id="one2" onclick="setTab('one',2,8)" style="width: 116px">企业资质</li>
                    <li id="one3" onclick="setTab('one',3,8)" style="width: 116px">核心人员</li>
                    <li id="one4" onclick="setTab('one',4,8)" style="width: 116px">企业设备</li>
                    <li id="one5" onclick="setTab('one',5,8)" style="width: 116px">中标记录</li>
                    <li id="one6" onclick="setTab('one',6,8)" style="width: 116px">资质范围</li>
                    <li id="one7" onclick="setTab('one',7,8)" style="width: 116px">企业简介</li>
                    <li id="one8" onclick="setTab('one',8,8)" style="width: 116px">资质证明</li>
                </ul>
            </div>
            <div class="Contentbox">
                <div id="con_one_1" class="hover">
                    <table id="td_head" cellpadding="0" cellspacing="5" border="0" style="width: 100%;
                        padding-left: 30px">
                        <tr>
                            <td class="tdOdd">
                                用户名:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_loginName" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                法人:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_legalPerson" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                        <tr>
                            <td class="tdOdd">
                                企业名称:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_userName" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                企业性质:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_epseNature" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                        <tr>
                            <td class="tdOdd">
                                营业执照:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_bsLisence" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                企业地址:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_epseAddr" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                        <tr>
                            <td class="tdOdd">
                                电话号码:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_phoneNum" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                电子邮箱:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_epseMail" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                        <tr>
                            <td class="tdOdd">
                                传真:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_fax" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                管理人员人数:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_ManagerNum" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                        <tr>
                            <td class="tdOdd">
                                职工人数:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_employeeNum" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="tdOdd">
                                技术人员人数:
                            </td>
                            <td class="tdEven">
                                <asp:Label ID="lb_tgy" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class=" td_change">
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="con_one_2" style="display: none; width: 100%;">
                    <%--   企业类型：<asp:Label ID="lb_epseCategory" runat="server" Text="Label"></asp:Label>
                    资质：<asp:Label ID="lb_epseCp" runat="server" Text="Label"></asp:Label>--%>
                    <asp:GridView ID="Gv_EtpriseDegree" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                        Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="企业类型">
                                <ItemTemplate>
                                    <asp:Label ID="LabeCategory" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="资质级别">
                                <ItemTemplate>
                                    <asp:Label ID="Labeldegree" runat="server" Text='<%#Eval("CaptitudeName")%>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="width: 100%; height: 75px; line-height: 75px; text-align: center; color: #000079;">
                                没有数据!
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div id="con_one_3" style="display: none;">
                    <asp:GridView ID="Gv_OrgDetails" runat="server" OnRowDataBound="Gv_OrgDetails_OnRowDataBound"
                        SkinID="GridView" AutoGenerateColumns="False" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="姓名">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="职务">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Convert.ToString(Eval("Position"))==""?"无":Eval("Position") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="资质">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Captitude.Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="执业资格">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# (String)Eval("LisenceCp")==""?"无":Eval("LisenceCp") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="性别">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("sex") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="年龄">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Convert.ToString(Eval("Age"))==""?"无":Eval("Age") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="联系方式">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# (String)Eval("Contact")==""?"无":StringHandler.CutString(Eval("Contact"),10) %>'
                                        ToolTip='<%# Eval("Contact") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="证书">
                                <ItemTemplate>
                                    <asp:HiddenField ID="HiddenFieldCertificate" Value='<%# Eval("Certificate") %>' runat="server" />
                                    <asp:Label ID="LabelCertificate" runat="server" Visible="false" Text="没有上传证书"></asp:Label>
                                    <asp:HiddenField ID="HiddenFieldID" Value='<%# Eval("ID") %>' runat="server" />
                                    <asp:HyperLink ID="HyperLinkImageShow" Visible="false" Target="_blank" runat="server">点击查看证书</asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" Wrap="False" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="width: 100%; height: 75px; line-height: 75px; text-align: center; color: #000079;">
                                没有数据!
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div id="con_one_4" style="display: none">
                    <asp:GridView ID="Gv_DeviceDetails" runat="server" SkinID="GridView" AutoGenerateColumns="False"
                        Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="设备名称">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DeviceName") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="品牌型号">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# (String)Eval("DeciveModel")==""?"无":StringHandler.CutString(Eval("DeciveModel"),10) %>'
                                        ToolTip='<%# Eval("DeciveModel") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="产地">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# (String)Eval("DecPlace")==""?"无":StringHandler.CutString(Eval("DecPlace"),10) %>'
                                        ToolTip='<%# Eval("DecPlace") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="数量">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#  Convert.ToString(Eval("count"))==""?"无":Eval("count") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="价格">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#  Eval("Price")== null?"无":Eval("Price") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="使用年限">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Convert.ToString(Eval("UsedYear"))==""?"无":Eval("UsedYear") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="主要参数">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# (String)Eval("Mainparameter")==""?"无":StringHandler.CutString(Eval("Mainparameter"),15) %>'
                                        ToolTip='<%# Eval("Mainparameter") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="width: 100%; height: 75px; text-align: center; line-height: 75px; color: #000079;">
                                没有数据!
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div id="con_one_5" style="display: none">
                    <table style="width: 100%; vertical-align: top;" cellpadding="0" cellspacing="0"
                        border="0">
                        <tr>
                            <td colspan="2" id="rp_win" style="height: auto;">
                                <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
                                    <ItemTemplate>
                                        <div style="border: 1px solid gray; width: 100%;">
                                            <table style="width: 100%; text-align: left;">
                                                <tr>
                                                    <td style="width: 80px;">
                                                        <b>项目名称:</b>
                                                    </td>
                                                    <td>
                                                        <asp:HyperLink ID="hy_proname" runat="server" Font-Bold="true" Text='<%# Eval("ProName") %>'>HyperLink</asp:HyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        评价详情:
                                                    </td>
                                                    <td>
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td style="width: 80px;">
                                                                    时间评价:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lb_date" runat="server" Text='<%# Eval("DateScore") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    质量评价:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lb_quality" runat="server" Text='<%# Eval("QualityScore") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    不良记录:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lb_badrecord" runat="server" Text='<%# Eval("BadRecord") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    在位率:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lb_regin" runat="server" Text='<%# Eval("Reign") %>'></asp:Label>%
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    业务能力:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lb_oper" runat="server" Text='<%# Eval("Operational") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                    <SeparatorTemplate>
                                        <div style="height: 5px;">
                                        </div>
                                    </SeparatorTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px;">
                                &nbsp;&nbsp;<asp:Label ID="LabelScore" Text="总评:" runat="server"></asp:Label>
                                <asp:Label ID="lab_weval" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lb_currentpage" runat="server" Text="Label"></asp:Label>
                                <asp:LinkButton ID="lb_left" runat="server" Text="上一页" OnClick="lb_left_Click"></asp:LinkButton>
                                <asp:LinkButton ID="lb_right" runat="server" Text="下一页" OnClick="lb_right_Click"></asp:LinkButton>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
                            <td colspan="2">
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="con_one_6" style="display: none">
                    <asp:TextBox ID="TextBoxnatureArea" runat="server" ReadOnly="true" TextMode="MultiLine"
                        Width="99%" Height="100px "></asp:TextBox>
                </div>
                <div id="con_one_7" style="display: none">
                    <asp:TextBox ID="txt_stateMent" runat="server" ReadOnly="true" TextMode="MultiLine"
                        Width="99%" Height="100px"></asp:TextBox>
                </div>
                <div id="con_one_8" style="display: none">
                    <table cellspacing="10">
                        <tr>
                            <td>
                                营业执照
                            </td>
                            <td style="color: Gray;">
                                <a href="../../ImageView.aspx?imageurl=<%=URL1 %>" target="_blank">
                                    <img runat="server" width="120" height="100" id="img1" /></a> (点击查看原图)
                            </td>
                        </tr>
                        <tr>
                            <td>
                                资质证书一
                            </td>
                            <td style="color: Gray;">
                                <a href="../../ImageView.aspx?imageurl=<%=URL2 %>" target="_blank">
                                    <img runat="server" width="120" height="100" id="img2" /></a>(点击查看原图)
                            </td>
                        </tr>
                        <tr>
                            <td>
                                资质证书二
                            </td>
                            <td style="color: Gray;">
                                <a href="../../ImageView.aspx?imageurl=<%=URL21 %>" target="_blank">
                                    <img runat="server" width="120" height="100" id="img21" /></a>(点击查看原图)
                            </td>
                        </tr>
                        <tr>
                            <td>
                                资质证书三
                            </td>
                            <td style="color: Gray;">
                                <a href="../../ImageView.aspx?imageurl=<%=URL22 %>" target="_blank">
                                    <img runat="server" width="120" height="100" id="img22" /></a>(点击查看原图)
                            </td>
                        </tr>
                        <tr>
                            <td>
                                安全生产许可证
                            </td>
                            <td style="color: Gray;">
                                <a href="../../ImageView.aspx?imageurl=<%=URL3 %>" target="_blank">
                                    <img runat="server" width="120" height="100" id="img3" /></a>(点击查看原图)
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <%--<asp:Panel ID="Panel2" runat="server">
            <div id="div_operation" style="margin-top: 20px; width: 100%">
                <fieldset style="width: 100%; height: 320px;">
                    <legend class="legendTxt">操作</legend>
                    <div>--%>
        <table id="tablecz" cellpadding="0" cellspacing="0" border="0" style="width: 100%;
            padding-top: 20px;" runat="server">
            <tr style="background: #ECECFF; height: 28px; font-weight: bold; font-size: 15px;">
                <td align="left">
                    &nbsp;操 &nbsp; &nbsp;作
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; padding-left: 27px;
                        margin-top: 25px">
                        <tr>
                            <td style="width: 120px; font-weight: bold; text-align: left">
                                &nbsp;&nbsp;用户状态:
                            </td>
                            <td style="color: Red; font-size: 14px; font-weight: bold;">
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Label ID="lb_currentState" runat="server"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="td_innerempty">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 120px; font-weight: bold; text-align: left">
                                &nbsp;&nbsp;<asp:Label ID="lb_IsDeleteOrRefuse" runat="server" Text="拒绝或禁用原因:"></asp:Label>
                            </td>
                            <td class="td_innerempty">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="lb_reason" runat="server" Text="Label"></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="td_innerempty">
                                <hr style="border-style: dashed;" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="td_innerempty">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; text-align: left">
                                &nbsp;&nbsp;请选择操作:
                            </td>
                            <td style="padding-left: 5px;">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:RadioButtonList ID="rb_changestate" runat="server" RepeatDirection="Horizontal"
                                            AutoPostBack="True">
                                            <asp:ListItem Value="1">通过</asp:ListItem>
                                            <asp:ListItem Value="2">拒绝</asp:ListItem>
                                            <asp:ListItem Value="3">禁用</asp:ListItem>
                                            <asp:ListItem Value="4">恢复</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="td_innerempty">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left; font-weight: bold;">
                                &nbsp;&nbsp;请填写拒绝或禁用的理由<label style="color: Red;">(*理由为必填信息)</label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="td_innerempty">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txt_reason" runat="server" SkinID="TextBox" TextMode="MultiLine"
                                    Width="98%" Height="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 5px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <asp:Button ID="btn_submit" runat="server" Text="确定" SkinID="Button" Width="100px"
                                    OnClick="btn_submit_Click" OnClientClick="return confirm('确实执行该操作吗?');" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <%--</fieldset> </div> </asp:Panel> </div>--%>
    </form>
</body>
</html>
