<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="newtov.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
         id товара:<br><asp:TextBox ID="id_tov"  RunAt="server" /><br>
         Наименование:<br><asp:TextBox ID="nametov"  RunAt="server" /><br>
         Страна:<br><asp:TextBox ID="countrytov"  RunAt="server" /><br>
         Цена:<br><asp:TextBox ID="costtov"  RunAt="server" /><br>
         Штрих- код:<br><asp:TextBox ID="code"  RunAt="server" /><br>
         <br />
         <asp:Label ID="LabelOK" runat="server" Text=""></asp:Label>
         <br />
         <br />
         <br />
         <asp:Button ID="Button1" runat="server" onclick="addTov" Text="Добавить" />
         <br>
    <p>
        Вернуться <a href="../main.aspx">на главную</a> или <a href="tov.aspx">вверх</a></p>
    <p>
        &nbsp;</p>
</asp:Content>