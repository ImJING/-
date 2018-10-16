<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AlterUser.ascx.cs" Inherits="JSMSTC.InviteTender.Management.Controls.AlterUser" %>
<%@ Register Src="~/Management/Controls/DeviceControl.ascx" TagName="DeviceControl" TagPrefix="ucl" %>
<%@ Register Src="~/Management/Controls/OrgFrameControl.ascx" TagName="OrgFrameControl" TagPrefix="ucl" %>

<table style="margin-left: 45px; margin-top: 25px; width: 95%;">
    <tr>
        <td colspan="3" style="height: 45px;">
            <div style="float: left;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Management/images/user.gif" />
            </div>
            <div>
                <span>基本信息维护</span>
            </div>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        <span style="color: Red;">*</span>
                    </td>
                    <td>
                        <span id="lab">企业名称:</span>
                    </td>
                    <td>
                        <asp:Label ID="lb_name" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span id="lab">企业性质:</span>
                    </td>
                    <td>
                        <asp:DropDownList ID="drop_natrue" runat="server"   Width="207px">
                            <asp:ListItem Value="1">国企</asp:ListItem>
                            <asp:ListItem Value="2">私企</asp:ListItem>
                            <asp:ListItem Value="3">外企</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span id="lab">企业类型</span>
                    </td>
                    <td>
                        <asp:DropDownList ID="drop_category" runat="server"   Width="207px">
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <span style="float: left;">电话号码:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_phone" runat="server"  Width="200px" MaxLength="20"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_phone"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                            ErrorMessage="输入的电话号码不合法" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)"
                            Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span>电子邮箱:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"   Width="200px" MaxLength="45"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                            ErrorMessage="您输入的邮箱不合法" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span>通讯地址:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_addr" runat="server"  Width="200px" MaxLength="80"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        资&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="207px">
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                    </td>
                    <td>
                        组织架构:
                    </td>
                    <td>
                        <ucl:OrgFrameControl ID="ofg" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                    </td>
                    <td>
                        设&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备:
                    </td>
                    <td>
                        <ucl:DeviceControl ID="device" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <span>主营业务:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_mainpro" runat="server" TextMode="MultiLine"  
                            Columns="30" Rows="7" Width="521px" MaxLength="120"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr> 
                <tr>
                    <td>
                    </td>
                    <td>
                        <span>公司简介 :</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_statement" runat="server" TextMode="MultiLine" Columns="30"
                            Rows="7" SkinID="TextBox" Width="521px" MaxLength="120"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="4">
                        <asp:ImageButton ID="Button_Submit" runat="server" ImageUrl="~/images/保存.JPG" OnClick="Button_Submit_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td>
        </td>
    </tr>
</table>
