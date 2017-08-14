<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="My ASP.NET Application"></asp:Label><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Display Data" OnClick="Button1_Click" /><br /><br />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br /><br />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Movie "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Ticket Sold "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Tickets Cost "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
