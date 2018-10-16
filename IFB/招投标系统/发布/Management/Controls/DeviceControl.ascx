<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DeviceControl.ascx.cs"
    Inherits="JSMSTC.InviteTender.Management.Controls.DeviceControl" %>
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#EFE6F7"
    Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
    GridLines="Vertical" AutoGenerateColumns="False" Font-Size="0.9em" OnRowDeleting="GridView1_RowDeleting"
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True"
    OnRowCommand="GridView1_RowCommand" 
    onprerender="GridView1_PreRender">
    <FooterStyle BackColor="#CCCCCC" Font-Size="0.9em" />
    <PagerStyle BackColor="#EFE6F7" ForeColor="Black" HorizontalAlign="Center" Font-Size="0.9em" />
    <SelectedRowStyle BackColor="#B2C3E1" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
    <HeaderStyle BackColor="#41519A" Font-Bold="True" ForeColor="White" Font-Size="1em" />
    <Columns>
        <asp:TemplateField HeaderText="设 备 名 称">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dname") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("dname") %>'></asp:Label>
                <br />
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("id") %>' />
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="品 牌 型 号">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dmodel") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtmodel" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("dmodel") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="数       量">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("count") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtacount" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("count") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="产       地">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("dplace") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("dplace") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="主要技术参数">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("mpara") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtpara" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("mpara") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="使 用 年 限">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("year") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("year") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="价       格">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操       作">
            <EditItemTemplate>
                <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("id") %>'
                    CommandName="Update" ImageUrl="~/Management/images/update.gif" ToolTip="更 新" />
                |<asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" EnableTheming="False"
                    EnableViewState="False" ImageUrl="~/Management/images/IsNotActive.gif" ToolTip="取 消" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:ImageButton ID="ImageButton5" runat="server" CommandName="Add" ImageUrl="~/Management/images/save.gif"
                    ToolTip="插 入" />
            </FooterTemplate>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" ImageUrl="~/Management/images/edit.gif"
                    ToolTip="编 辑" />
                |<asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("id") %>'
                    CommandName="Delete" ImageUrl="~/Management/images/delete.gif" ToolTip="删 除" OnClientClick="return confirm('确实要删除吗?');" />
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <div style="width: 100%; height: 45px;" align="center">
            没有数据!
        </div>
    </EmptyDataTemplate>
</asp:GridView>
<table style="width: 100%;">
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
</table>
