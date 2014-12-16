<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Tov.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
         id поставщика:<br><asp:TextBox ID="id_post"  RunAt="server" /><br>
         Поставщик:<br><asp:TextBox ID="name"  RunAt="server" /><br>
         Страна:<br><asp:TextBox ID="country"  RunAt="server" /><br>
         Город:<br><asp:TextBox ID="city"  RunAt="server" /><br>
         <br>
                  <asp:Button  ID="Butsearch"  Text="Добавить" OnClick="addPost" RunAt="server" Width="99px" />
         <br />
         <a href="main.aspx">на главную</a><br>
                          <asp:Label  ID="messg"  RunAt="server" />
</asp:Content>