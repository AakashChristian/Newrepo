<%@ Page Title="Survey Page" Language="C#" MasterPageFile="~/myPages/Site1master.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Assignment2_COMP_229_300808436.myPages.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>WELCOME TO THE SURVEY</h3>
    <table class="auto-style1" style="margin:0px; margin-left:370px; margin-right:150px">
        <tr>
            <td style="text-align: right">First Name: </td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" style="height: 22px"></asp:TextBox>
                
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required!"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Last Name: </td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Gender: </td>
            <td style="text-align: left">
                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" CausesValidation="True" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="GenderGroup" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" CausesValidation="True" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="GenderGroup" />
            &nbsp;
                </td>
        </tr>
        <tr>
            <td style="text-align: right">email: </td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Address is Required!" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="You must enter a valid Email Address!"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Phone No: </td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone Number Required!"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="[0-9]{10}" ControlToValidate="TextBox4" ErrorMessage="Please Enter Valid Phone Number!"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <br/>
    <h4>Please Answer Following Question to complete the survey</h4><br/>

    &nbsp;&nbsp;&nbsp;

    1. What Product Do You Have? Select from the listbox given below.<br /><br/>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Grand Piano</asp:ListItem>
        <asp:ListItem>Guitar Electro789</asp:ListItem>
        <asp:ListItem>Drum Sticks</asp:ListItem>
        <asp:ListItem>Octopad540XD</asp:ListItem>
        <asp:ListItem>Yamaha Synthesisor PSR-S710</asp:ListItem>
        <asp:ListItem>Yamaha PSR S90</asp:ListItem>
        <asp:ListItem>Korg XD 540</asp:ListItem>
        <asp:ListItem>VIolA</asp:ListItem>
        <asp:ListItem>Violin 245XD</asp:ListItem>
        <asp:ListItem>Organ Pipes Silver</asp:ListItem>
        <asp:ListItem>Flute Electron</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    2. How much rating would you give from 1 to 5 for our products?<br />
    <br/>
    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="RatingGroup" Text="1" /> <asp:RadioButton ID="RadioButton4" runat="server" GroupName="RatingGroup" Text="2" /> <asp:RadioButton ID="RadioButton5" runat="server" GroupName="RatingGroup" Text="3" /> <asp:RadioButton ID="RadioButton6" runat="server" GroupName="RatingGroup" Text="4" />



    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="RatingGroup" Text="5" />

    <br />

    <br/>

    <asp:Button ID="Button1" runat="server" PostBackUrl="~/myPages/ThankYou.aspx" Text="Submit" />
</asp:Content>
