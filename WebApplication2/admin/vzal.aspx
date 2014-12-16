<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="vzal.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        В зал</h2>
    <p>

        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1445454" 
            DataTextField="IDTOV" DataValueField="IDTOV"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1445454" runat="server" 
            ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
            
            SelectCommand="SELECT [IDTOV], [date], [IDPOST], [num_1], [num_2], [id_postupl] FROM [Postupl]">
        </asp:SqlDataSource>
        <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1445454" 
            DataTextField="IDPOST" DataValueField="IDPOST"></asp:ListBox>
        <asp:ListBox ID="ListBox3" runat="server" DataSourceID="SqlDataSource1445454" 
            DataTextField="date" DataValueField="date"></asp:ListBox>
        <asp:ListBox ID="ListBox4" runat="server" DataSourceID="SqlDataSource1445454" 
            DataTextField="num_1" DataValueField="num_1"></asp:ListBox>
        <asp:ListBox ID="ListBox5" runat="server" DataSourceID="SqlDataSource1445454" 
            DataTextField="num_2" DataValueField="num_2"></asp:ListBox>
    <p>
        <p>

    <p>
    <p>
    <p>
    <p>
    <p>
        <asp:DropDownList ID="DropDownList1234234" runat="server" 
            DataSourceID="SqlDataSource1445454" DataTextField="id_postupl" 
            DataValueField="id_postupl">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList1234235" runat="server" 
            DataSourceID="SqlDataSource1445454" DataTextField="IDTOV" 
            DataValueField="IDTOV">
        </asp:DropDownList>
    <p>
         Колличество:<br />
         <asp:TextBox ID="Koll" runat="server"></asp:TextBox>
         <p>
         <br />
             <asp:Button ID="Butvzal" runat="server" Text="Унести в зал" OnClick="vzal" />
         <br />
            
        Вернуться <a href="main.aspx">на главную</a>&nbsp;</p>
</asp:Content>