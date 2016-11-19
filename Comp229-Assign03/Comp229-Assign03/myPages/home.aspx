<%@ Page Title="" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign03.myPages.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome To Our Elite School Management</p><br/>Please go through the following Information
    <br/><br/><h5><b>List Of Students</b></h5><br/>
    <asp:GridView ID="GridView" autogenerateselectbutton="True"  onselectedindexchanged="GridView_SelectedRow" runat="server" AutoGenerateColumns="False"  Height="156px" HorizontalAlign="Center" Width="276px" CellSpacing="10">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
            </Columns>
            <HeaderStyle BorderStyle="Solid" />
        </asp:GridView><br/><br/>

    <asp:Button ID="Button1" runat="server" Text="Add Student's" ForeColor="Black" OnClick="addStudentButton"/>


</asp:Content>

