<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="edittov.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Изменение товара
    </h2>
    ID    Название Страна    Штрих-код   цена
    <p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="id_tov" DataValueField="id_tov"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
            SelectCommand="SELECT * FROM [tov]"></asp:SqlDataSource>
        <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="name" DataValueField="name"></asp:ListBox>
        <asp:ListBox ID="ListBox3" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="country" DataValueField="country"></asp:ListBox>
    <asp:ListBox ID="ListBox4" runat="server" 
        DataSourceID="SqlDataSource2234234234" DataTextField="code" 
        DataValueField="code"></asp:ListBox>
        <asp:ListBox ID="ListBox5" runat="server" 
        DataSourceID="SqlDataSource2234234234" DataTextField="cost" 
        DataValueField="cost"></asp:ListBox>
    </p>




    <p>

        &nbsp;</p>
    <p>
            &nbsp;</p>
    <p>
            &nbsp;</p>
    <p>
            &nbsp;</p>
    <p>
        <asp:Button ID="Buttondelall" runat="server" Text="Удалить все товары" OnClick="delall" />
    </p>
    АЙДИ товара:
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="id_tov" DataValueField="id_tov">
        </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2234234234" runat="server" 
        ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
        
        SelectCommand="SELECT [code], [cost], [country], [name], [id_tov] FROM [tov]"></asp:SqlDataSource>
  


        Что вы хотите изменить:
    <p>
        Наименование:</p>
            <asp:TextBox ID="TextBox22" runat="server"> </asp:TextBox>
     <p>
        Страна:</p>
            <asp:TextBox ID="TextBox33" runat="server"> </asp:TextBox>
                <p>
        <asp:Button ID="Button12" runat="server" OnClick="tovupd" Text="Обновить" />
                 <p>   <a href="../main.aspx">на главную</a> или <a href="tov.aspx">вверх</a>

    </p>
    </asp:Content>