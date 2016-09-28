<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactMe.aspx.cs" Inherits="Assignment1_COMP_229_300808436.ContactMe" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>ContactMe</title>
	<link href="ContactBody.css" rel="stylesheet" type="text/css">
	<style type="text/css">
.auto-style1 {
	text-align: center;
}
</style>
</head>
<body>
    <form id="form1"  action="~/home.aspx" runat="server">
    <div>
        <div><h4 class="auto-style1">CONTACT US</h4>
	<h5 class="auto-style1">Please Complete the fields Below</h5>
            <p class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; color: #666666; font-weight: bold; text-decoration: none;">
			<a href="home.aspx" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #999999; text-decoration: none;">Home</a></p>
	<p style="color: #CCCCCC; font-family: Arial, Helvetica, sans-serif">&nbsp;</p>
</div>

    <table style="width: 36%" align="center">
		<tr>
			<td class="auto-style3" style="height: 23px">First Name: </td>
			<td class="auto-style2" style="height: 23px">
			<input name="Text1" type="text" id="fname"></td>
		</tr>
		<tr>
			<td class="auto-style3">Last Name:</td>
			<td class="auto-style2"><input name="Text2" type="text" id="Lname"></td>
		</tr>
		<tr>
			<td class="auto-style3">Address:</td>
			<td class="auto-style2"><input name="Text3" type="text" id="address"></td>
		</tr>
		<tr>
			<td class="auto-style3">City:</td>
			<td class="auto-style2"><input name="Text4" type="text" id="city"></td>
		</tr>
		<tr>
			<td class="auto-style3">Postal Code:</td>
			<td class="auto-style2"><input name="Text5" type="text" id="PostCode"></td>
		</tr>
		<tr>
			<td class="auto-style5">Province:</td>
			<td class="auto-style6"> <select id="province" name="province"> 
<option value="QC">Qubec</option> <option value="ON">Ontario</option> 
<option value="MN">Manitoba</option> <option value="SK">Saskatchewan</option> <option value="AB">Alberta</option> <option value="BC">British Columbia</option> </select> <span id="provinceMessage"></span></td>
		</tr>
		<tr>
			<td class="auto-style3">Age:</td>
			<td class="auto-style2"><input name="Text7" type="text" id="age"></td>
		</tr>
		<tr>
			<td class="auto-style3">Password:</td>
			<td class="auto-style2"><input name="Text8" type="text" id="password"></td>
		</tr>
		<tr>
			<td class="auto-style3">Confirm :</td>
			<td class="auto-style2"><input name="Text9" type="text" id="confirm"></td>
		</tr>
		<tr>
			<td class="auto-style3">Email:</td>
			<td class="auto-style2"><input name="Text10" type="text" id="email" style="width: 257px"></td>
		</tr>
		<tr>
			<td class="auto-style3">&nbsp;</td>
			<td class="auto-style2">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style3">
			    <asp:Button ID="Button1" runat="server" PostBackUrl="~/home.aspx" Text="Button" OnClick="Button1_Click" />
            </td>
			<td class="auto-style2">
			    <input id="clearForm" type="reset" value="Clear Form" /></td>
		</tr>
	</table>

    </div>
    </form>
</body>
</html>
