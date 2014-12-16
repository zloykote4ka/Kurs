<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="postupl.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <br />
&nbsp;
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="postupl1ist" 
        DataTextField="IDTOV" DataValueField="IDTOV"></asp:ListBox>
    <asp:SqlDataSource ID="postupl1ist" runat="server" 
        ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
        SelectCommand="SELECT [IDTOV] FROM [Postupl]"></asp:SqlDataSource>
    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="postupl2ist" 
        DataTextField="IDPOST" DataValueField="IDPOST"></asp:ListBox>
    <asp:SqlDataSource ID="postupl2ist" runat="server" 
        ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
        SelectCommand="SELECT [IDPOST] FROM [Postupl]"></asp:SqlDataSource>
    <asp:ListBox ID="ListBox3" runat="server" DataSourceID="postupl3ist" 
        DataTextField="date" DataValueField="date"></asp:ListBox>
    <asp:SqlDataSource ID="postupl3ist" runat="server" 
        ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
        SelectCommand="SELECT [date], [num_1], [num_2] FROM [Postupl]">
    </asp:SqlDataSource>
    <asp:ListBox ID="ListBox4" runat="server" DataSourceID="postupl3ist" 
        DataTextField="num_1" DataValueField="num_1"></asp:ListBox>
&nbsp;<asp:ListBox ID="ListBox5" runat="server" DataSourceID="postupl3ist" 
        DataTextField="num_2" DataValueField="num_2"></asp:ListBox>
    <br />
    <br />
    Вернуться <a href="main.aspx">на главную</a>
</asp:Content>