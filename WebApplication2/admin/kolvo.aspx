<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="kolvo.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Наличие</h2>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource112121212" 
            DataTextField="IDTOV" DataValueField="IDTOV"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource112121212" runat="server" 
            ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
            SelectCommand="SELECT [IDTOV], [kol] FROM [kolvo]"></asp:SqlDataSource>
        <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource111212" 
            DataTextField="kol" DataValueField="kol"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource111212" runat="server" 
            ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
            SelectCommand="SELECT [kol] FROM [kolvo]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Вернуться <a href="main.aspx">на главную</a></p>
    <p>
        &nbsp;</p>
</asp:Content>