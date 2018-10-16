<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateControl.ascx.cs"
    Inherits="JSMSTC.InviteTender.Management.Controls.DateControl" %>
 
<table style="width:140px;height: 22px; text-align:left; font-size:12px;">
    <tr style="background-color: green;">
        <td>
            时
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="38px">
            </asp:DropDownList>
        </td>
        <td>
            分
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="45px">
            </asp:DropDownList>
        </td>
        <td>
            秒
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="48px">
            </asp:DropDownList>
        </td>
    </tr>
</table>
