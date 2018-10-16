<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AlterAdmin.ascx.cs" Inherits="JSMSTC.InviteTender.Management.Controls.AlterAdmin" %>

<table>
  
   <table>
    <tr>
        <td style="color:#000079; font-size:samll; font-family:Verdana; font-weight:bold;">用户名:</td>
        <td>
            <asp:TextBox ID="txt_user" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="txt_user" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color:#000079; font-size:samll; font-family:Verdana; font-weight:bold;">邮&nbsp;&nbsp;&nbsp;箱:</td>
        <td>
            <asp:TextBox ID="txt_email" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="txt_email" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:ImageButton ID="Button_Submit" runat="server" ImageUrl="~/images/保存.JPG" 
                onclick="Button_Submit_Click" />
            <asp:ImageButton ID="Button_Reset" runat="server" 
                ImageUrl="~/Management/images/login_cz.gif" onclick="Button_Reset_Click" />
        </td>
    </tr>
</table> 
</table>
