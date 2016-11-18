<%@ Page Title="" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="addstudent.aspx.cs" Inherits="Comp229_Assign03.myPages.addstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" style="width: 826px">
        <tr>
            <td class="text-right" style="width: 413px">First Name:</td>
            <td style="width: 413px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 413px">Last Name:</td>
            <td style="width: 413px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 413px">Course:</td>
            <td style="width: 413px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br/>
<asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Submit" onclick="submit_click"/>
<br/>
</asp:Content>
