<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BazaAutomatsko.aspx.cs" Inherits="ADONet.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <asp:GridView ID="gvsStudents" runat="server" DataSourceID="DataSource" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="DataSource" ConnectionString="<%$ ConnectionStrings:AdoNetKontroleConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Student] ([Ime], [Prezime], [GodinaUpisa]) VALUES (@Ime, @Prezime, @GodinaUpisa)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Ime] = @Ime, [Prezime] = @Prezime, [GodinaUpisa] = @GodinaUpisa WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ime" Type="String"></asp:Parameter>
            <asp:Parameter Name="Prezime" Type="String"></asp:Parameter>
            <asp:Parameter Name="GodinaUpisa" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ime" Type="String"></asp:Parameter>
            <asp:Parameter Name="Prezime" Type="String"></asp:Parameter>
            <asp:Parameter Name="GodinaUpisa" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
 <br />
 </div>
</asp:Content>
