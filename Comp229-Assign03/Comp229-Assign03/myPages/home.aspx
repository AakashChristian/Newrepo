<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign03.myPages.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome To Our Elite School Management</p><br/>Please go through the following Information
    <br/><br/><h5><b>List Of Students</b></h5><br/>
    <asp:GridView ID="GridView" autogenerateselectbutton="True"  onselectedindexchanged="GridView_SelectedRow" runat="server" AutoGenerateColumns="False"  Height="156px" HorizontalAlign="Center" Width="300px" CellSpacing="10" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Size="Medium" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BorderStyle="Solid" BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BorderStyle="Groove" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView><br/><br/>

    <asp:Button ID="Button1" runat="server" Text="Add Student's" ForeColor="Black" OnClick="addStudentButton"/>


</asp:Content>

