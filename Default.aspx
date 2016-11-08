<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <!--<link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />-->
    <style type="text/css">
        .style1 {
            position: absolute;
            width: 70%;
            top: 10px;
            left: 10px;
            right: 10px;
            padding: 32px;

        }

        .style2 {
            color: #0066CC;
            text-align: center;
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

        .style8 {
            height: 45px;
            color: #0066CC;
            text-align: center;
        }

       .textbox {
            padding: 10px 15px;
            margin: 8px 0;
            box-sizing: border-box;
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
    </style>
</head>
<body style="margin: 0px;">
    <form id="form1" runat="server">
        <div class="style1">
            <h3 class="style2"><strong>New Member Sign Up Here</strong></h3>
            <br />
            <br />
            <div style="margin: auto; float: none">
                <table>
                    <tr>
                        <td>UserName :</td>
                        <td>
                            <asp:TextBox ID="Uname" runat="server" MaxLength="15"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="vldUserName" runat="server" ErrorMessage="You must enter a user name." ControlToValidate="UName" />
                        </td>
                    </tr>
                    <tr>
                        <td>Type :</td>
                        <td>
                            <asp:RadioButtonList ID="Gender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Judge</asp:ListItem>
                                <asp:ListItem>Lawyer</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td>
                            <asp:TextBox ID="Password" runat="server" MaxLength="8" TextMode="Password" CssClass="textbox"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="You must enter a password." ControlToValidate="Password" />
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password :</td>
                        <td>
                            <asp:TextBox ID="Cpassword" runat="server" MaxLength="8" TextMode="Password" CssClass="textbox"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="vldCpassword" runat="server" ErrorMessage="You must enter a value." ControlToValidate="Cpassword" />
                        </td>
                        <td>
                            <asp:CompareValidator ID="vldRetype" runat="server" ErrorMessage="Your password does not match." ControlToCompare="Password" ControlToValidate="Cpassword" />
                        </td>
                    </tr>
                    <tr>
                        <td>Amount :</td>
                        <td>
                            <asp:TextBox ID="Fees" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="vldFees" runat="server" ErrorMessage="You must enter an amount." ControlToValidate="Fees" />
                        </td>
                    </tr>
                    <tr>
                        <td>Email :</td>
                        <td><asp:TextBox ID="eMail" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="vldeMail" runat="server" ErrorMessage="You must enter an email." ControlToValidate="eMail" /> <br />
                            <asp:RegularExpressionValidator ID="chkeMail" runat="server" ErrorMessage="This email is missing the @ symbol." ValidationExpression=".+@.+" ControlToValidate="eMail" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Sign Up" OnClick="Button1_Click" />    
                        </td>
                        <td>            
                            <asp:Button ID="Button2" runat="server" Text="Login" OnClick="redirect" CssClass="button" /><br />
                            <asp:Label runat="server" ID="message" />
                        </td>
                       
                    </tr>
                </table>
            </div>
        </div>

        <div class="style7">
            
        </div>
    </form>
</body>
</html>
