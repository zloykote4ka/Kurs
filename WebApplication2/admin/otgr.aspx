<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="otgr.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Отгрузки</h2>
    <p>

        &nbsp;</p>
    <p>

            <asp:ListBox ID="ListBox1" runat="server" 
                DataSourceID="SqlDataSource1112121212" DataTextField="time" 
                DataValueField="time"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1112121212" runat="server" 
                ConnectionString="<%$ ConnectionStrings:kursConnectionString %>" 
                SelectCommand="SELECT [time], [tov], [kol] FROM [otgr]"></asp:SqlDataSource>
            <asp:ListBox ID="ListBox2" runat="server" 
                DataSourceID="SqlDataSource1112121212" DataTextField="tov" DataValueField="tov">
            </asp:ListBox>

            
                <asp:ListBox ID="ListBox3" runat="server" 
                    DataSourceID="SqlDataSource1112121212" DataTextField="kol" DataValueField="kol">
                </asp:ListBox>
    </p>
    <p>
        <p>

    <p>

    <p>

    <p>


        Вернуться <a href="main.aspx">на главную</a></p>
    </asp:Content>