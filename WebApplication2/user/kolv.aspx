<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="kolv.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Поиск по штрих- коду</h2>
    <p>
                 Введите штрих- код:<br><asp:TextBox ID="codes"  RunAt="server" /><br>
    </p>
    <p>
        <p>

        Название: 

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <p>

        Цена: 

        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <p>

        Осталось: 

        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

    <p>
             <asp:Button ID="Buttonsearch" runat="server" onclick="codesearch" Text="Поиск по штрих- коду" />
    <p>
             <a href="../Default.aspx">на главную</a><br>
        &nbsp;</p>
</asp:Content>
