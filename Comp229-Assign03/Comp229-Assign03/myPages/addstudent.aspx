<%@ Page Title="" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="addstudent.aspx.cs" Inherits="Comp229_Assign03.myPages.addstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" style="width: 826px" align="center">
        <tr>
            <td class="text-center" style="width: 413px; text-align: right;">First Name:</td>
            <td style="width: 413px; text-align: left;">
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 413px; text-align: right;">Last Name:</td>
            <td style="width: 413px; text-align: left;">
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 413px; text-align: right;">Enrollment Dt: </td>
            <td style="width: 413px; text-align: left;">
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black">yyyy/mm/dd</asp:TextBox>
            </td>
        </tr>
    </table>
    <br/>
<asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Submit" onclick="submit_click"/>
<br/><br/>
</asp:Content>
