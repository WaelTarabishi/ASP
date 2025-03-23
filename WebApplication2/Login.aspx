<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        /* General Body Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        /* Container for the entire layout */
        .login-form-container {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        /* Title Style */
        .login-form-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
            text-align: center;
        }

        /* Input Fields Style */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        /* Button Style */
        .form-button {
            background-color: #4CAF50;
    color: white;
    border: none;
    padding: 12px;
    width: 100%;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
        }

        .form-button:hover {
            background-color: #45a049;
        }

        /* Label Style */
        label {
            font-size: 14px;
            color: #555;
        }

        /* Error Message Styling */
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-form-container">
            <h2>Login</h2>

            <!-- Error message will be shown only if there’s an issue -->

            <label for="TextBox1">Username:</label><br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox><br />

            <label for="TextBox2">Password:</label><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="form-button" Width="100%" /><br />

                        <asp:Label ID="Label1" runat="server"  CssClass="error-message" ></asp:Label><br />

 

        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:web2ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    </form>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:web2ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
</body>
</html>
