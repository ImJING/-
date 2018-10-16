<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrgFrameControl.ascx.cs"
    Inherits="JSMSTC.InviteTender.Management.Controls.OrgFrameControl" %>
<table style="width: 100%;">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" SkinID="GridView" BackColor="White" BorderColor="#EFE6F7"
                Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                GridLines="Vertical" AutoGenerateColumns="False" Font-Size="0.9em" OnRowEditing="GridView1_RowEditing"
                OnRowCommand="GridView1_RowCommand" ShowFooter="True" 
                OnPreRender="GridView1_PreRender" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="姓     名">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            <br />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("id") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="职     务">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pos") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtpos" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pos") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="职     称">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("job") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtjob" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("job") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="性     别">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("sex") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtsex" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("sex") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="年     龄">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="联系方式">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("con") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("con") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="操     作">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Upate" ImageUrl="~/Management/images/update.gif"
                                ToolTip="更 新" Width="16px" />
                            |<asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" ImageUrl="~/Management/images/IsNotActive.gif"
                                ToolTip="取 消" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ID="ImageButton5" runat="server" CommandName="Add" ImageUrl="~/Management/images/save.gif"
                                ToolTip="插 入" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Edit" ImageUrl="~/Management/images/edit.gif"
                                ToolTip="编 辑" />
                            |<asp:ImageButton ID="ImageButton3" runat="server" CommandName="Delete" CommandArgument='<% # Eval("id") %>'
                                ImageUrl="~/Management/images/delete.gif" ToolTip="删 除" OnClientClick="return confirm('确定要删除吗?');" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
