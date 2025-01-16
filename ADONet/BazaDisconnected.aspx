<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BazaDisconnected.aspx.cs" Inherits="ADONet.BazaDisconnected" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <asp:GridView ID="gvStudents" runat="server" OnSelectedIndexChanged="gvStudents_SelectedIndexChanged">
    </asp:GridView>
 <br />
 <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click"
Width="70px" />
 </div>
</asp:Content>
