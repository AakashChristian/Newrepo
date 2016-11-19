﻿<%@ Page Title="Student Page" Language="C#" MasterPageFile="~/myPages/nySite.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Comp229_Assign03.myPages.studentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False"  Height="156px" HorizontalAlign="Center" Width="276px" CellSpacing="10" AutoGenerateEditButton="True"
         AutoGenerateDeleteButton="true" OnRowDeleting="RowDeleting" Onrowupdating="RowUpdating" OnRowUpdated="RowUpdated"
         onrowcancelingedit="CancelEditRow" onrowediting="RowEditing">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
                
                <asp:BoundField DataField="Title" HeaderText="Title" />
            </Columns>
            <HeaderStyle BorderStyle="Solid" />
        </asp:GridView>
     </asp:Content>
