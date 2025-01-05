<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Holaaaa....</h1>
    <asp:GridView ID="GridViewAutos" CssClass="table table-dark" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Modelo" DataField="Modelo"/>
            <asp:BoundField HeaderText="Color" DataField="Color"/>
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado"/>
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado"/>

        </Columns>
    </asp:GridView>

</asp:Content>
