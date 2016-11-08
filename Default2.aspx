<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
            .style1 {
            position: absolute;
            width: 40%;
            top: 100px;
            left: 300px;
            right: 10px;
            padding: 32px;
       }

        .style2 {
            color: #0066CC;
            text-align: center;
            width:70%
        }

        .style7 {
            position: absolute;
            width: 30%;
            height: 100%;
            top: 0px;
            right: 0px;
            background-color: #0066CC;
            padding: 32px;
            color: white;
        }
        .button {
            background-color: #0066CC; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
                input[type=text] {
            padding: 10px 15px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        input[type=password] {
            padding: 10px 15px;
            margin: 8px 0;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="style2"><strong>Login Page</strong></h2><br /><br />
        <div class="style1">
            
            Username:
            <asp:TextBox ID="UserName" runat="server"
                MaxLength="20" ForeColor="#707070"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldUserName" runat="server" ErrorMessage="You must enter a username." ControlToValidate="UserName" />
            <br />
            Password:
            <asp:TextBox ID="PassLog" runat="server" ForeColor="#707070"
                MaxLength="10" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="You must enter a password." ControlToValidate="PassLog" />
            <br /><br />
            <asp:Button ID="Login" runat="server" Text="Login"
               OnClick="Login_Click" CssClass="button" />&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp&nbsp
            <asp:Button ID="SignUp" runat="server" Text="SignUp" OnClick="SignUp_click" CssClass="button" />
            <br />
            <asp:Label ID="log_mess" runat="server"></asp:Label>
        </div>
        <div class="style7">
            
        </div>
    </form>
</body>
</html>
