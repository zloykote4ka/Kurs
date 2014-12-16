<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Склад магазина "Все в пряничках"
    </h2>
    <p>
        Если вы- администратор, то нажмите <a href="admin/main.aspx">сюда</a></p>
    <p>
        &nbsp;</p>
    <p>
        Если вы - работник склада, нажмите <a href="user/kolv.aspx">сюда</a></p>
    <p>
        &nbsp;</p>
</asp:Content>
