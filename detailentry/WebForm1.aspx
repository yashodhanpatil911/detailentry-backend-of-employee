﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="detailentry.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                      <td>FirstName</td>
                    <td><asp:TextBox ID="firstname" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>LastName</td>
                    <td><asp:TextBox ID="lastname" runat="server"></asp:TextBox></td>  
               </tr>
              
                <tr>
                    <td>City</td>
                    <td><asp:TextBox ID="city" runat="server" BorderColor="black" Font-Size="15" BorderStyle="Solid"></asp:TextBox></td>               
                </tr>
                 <tr>
                         <td>Enter Id to update User Detail :</td>
                         <td><asp:TextBox ID="oldid" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="delete" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="update" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" Text="view" OnClick="Button4_Click" />
                    </td>
                </tr>
               
            </table>
            <br />
            <asp:GridView ID="gridview1" runat="server" OnSelectedIndexChanged="gridview1_SelectedIndexChanged"></asp:GridView>
        </div>
    </form>
</body>
</html>
