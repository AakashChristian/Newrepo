<%@ Page Title="Course Enrollment Page" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="courseenrollment.aspx.cs" Inherits="Comp229_Assign03.myPages.courseenrollment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5><b><i> List Of Enrolled Students </i></b></h5>
    <br/>
    <asp:GridView ID="GridViewCourse" runat="server" AutoGenerateColumns="False"  Height="156px" HorizontalAlign="Center" Width="300px" CellSpacing="10" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BorderStyle="Solid" BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

</asp:Content>
