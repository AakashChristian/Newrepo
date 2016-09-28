<!DOCTYPE html>
 <!-- Aakash Christian - 300808436 PAGE NAME myPortfolio.aspx-->
<script runat="server">

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)

    End Sub
</script>

<html runat="server">
<head>
    <meta content="en-us" http-equiv="Content-Language">
    <title>MyPortfolio</title>
	<meta charset="utf-8" />
	<link href="PortfolioPage.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	
	</style>
</head>
<body>
<form id="form1" runat="server">
<div class="auto-style1">
	<img alt="" class="auto-style2" height="60" src="images/PortfolioBanner.jpg" width="468"><br />
    <a href ="home.aspx" style="color: #C0C0C0; font-family: Arial, Helvetica, sans-serif; font-weight: bold; text-decoration: none;">Home</a></div><br>
	<div>
		<asp:Panel id="Panel1" runat="server"><div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/DSC008462.jpg" />
            </div><br>
		<div style="position: absolute; width: 934px; height: 531px; align-self: center; z-index: 1; top: 135px; left: 10px;" id="layer1"><h1 style="text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #999999; padding-left: 455px;" >Aakash Christian</h1>
            
            <h5 style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;">I like to be Creative and would like to join your Company for better improvement <br> my skills as wells as better for Company.</h5>
            <br>
            <address style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;">1858 Markham Road, <br> Scarborough, ON <br> M1H2Y8 <br> Canada</address>
		    <h5 style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;"><b><i style="font-family: Arial, Helvetica, sans-serif; color: #666666">Contact # 647-633-8645<br>email: achris31007@my.centennialcollege.ca</i></b></h5>
            <h5 style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;"><b>Work Experience 1:</b><br>BLU RESTAURANTE & LOUNGE<br>Downtown, Toronto, ON<br>Canada</h5>
        
            <h5 style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;"><b>Work Experience 2:</b><br>SUBWAY RESTAURANT<br>Queens'Quay West, Downtown, Toronto, ON<br>M1H4Y7<br>Canada
                <br><br><b>Work Experience 3:</b><br>EXIDE LIFE<br>Ahmedabad, Gujarat, 380008<br>India
            </h5>
            <h6 style="text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #666666; padding-left: 445px; font-weight: normal;"><i>Kindly, I hereby confirm that everything written in this portfolio is true as per my Knowledge.</i></h6>
        </div>
		</asp:Panel>
	</div>
</form>
</body>
</html>
