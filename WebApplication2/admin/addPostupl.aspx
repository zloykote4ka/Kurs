<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="addPostupl.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
         Товар:<br>
         <br />
         <asp:DropDownList ID="DropDownList11" runat="server" 
             DataSourceID="SqlDataSource11" DataTextField="name" DataValueField="name">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
             ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
             SelectCommand="SELECT [name] FROM [tov]"></asp:SqlDataSource>

          Поставщик:<br>
         <asp:DropDownList ID="DropDownList12" runat="server" 
             DataSourceID="SqlDataSource122" DataTextField="name" DataValueField="name">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource122" runat="server" 
             ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
             SelectCommand="SELECT [name] FROM [post]"></asp:SqlDataSource>

         <br />
         Дата поступления:<br />
         <asp:TextBox ID="DatePostupl" runat="server"></asp:TextBox>
         <br />
         <br />
         Колличество:<br />
         <asp:TextBox ID="Kolvo" runat="server"></asp:TextBox>
         <br />
         <br />

         ID поступления:<br />
         <asp:TextBox ID="idpostupl" runat="server"></asp:TextBox>
         <br />
         <br />

         <asp:Button ID="Button121212" runat="server" OnClick="addPostupl" 
             Text="Добавить Поступление" />
         <br />
         <br />
         <asp:Button ID="Button121213" runat="server" onclick="Button121213_Click" 
             Text="Удаление всего" />
         <br />
                  <a href="main.aspx">на главную</a><br>
         </asp:Content>