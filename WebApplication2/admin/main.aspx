<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        МЕНЮ АДМИНИСТРАТОРА
    </h2>
    <p>
        <a href="vzal.aspx">Унести в зал</a></p>
    <p>
        <a href="../Account/Register.aspx">Работа с пользователями&nbsp;</a>&nbsp;&nbsp;
    </p>
    <p>
        <a href="addPost.aspx">Новый поставщик</a></p>
    <p>
        <a href="tov/tov.aspx">Товары</a></p>
    <p>
        <a href="addPostupl.aspx">Новое поступление</a></p>
    <p>
        <a href="kolvo.aspx">Наличие</a></p>
    <p>
        <a href="postupl.aspx">Просмотр поступлений</a></p>
    <p>
        <a href="otgr.aspx">Отгрузки</a></p>

    </asp:Content>