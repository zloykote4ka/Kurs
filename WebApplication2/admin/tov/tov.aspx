<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="tov.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        работа с товарами</h2>
    <p>
        <a href="newtov.aspx">Новый товар</a></p>
    <p>
        <a href="edittov.aspx">Изменить товар</a></p>

    <p>
        Вернуться <a href="../main.aspx">на главную</a></p>
    <p>
        &nbsp;</p>
</asp:Content>