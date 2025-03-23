<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="WebApplication2.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        user<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        pass<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Gender :
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
        <br />
        <br />
        email<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        mobile
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringres %>" SelectCommand="SELECT * FROM [res]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
