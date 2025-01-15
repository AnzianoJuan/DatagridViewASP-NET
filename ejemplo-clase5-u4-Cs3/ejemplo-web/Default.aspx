<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .oclulto {
            display: none;
        }
    </style>

    <div class="row">
        <div class="col">
            <asp:GridView ID="GridViewAutos" CssClass="table table-dark" DataKeyNames="Id" OnSelectedIndexChanged="GridViewAutos_SelectedIndexChanged" AutoGenerateColumns="false" runat="server">
                <Columns>
<%--                    <asp:BoundField HeaderText="Id" DataFiled="Id" HeaderStyle-CssClass="oclulto" ItemStyle-CssClass="oclulto" />--%>
                    <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                </Columns>
            </asp:GridView>
            <a href="AutoForm.aspx">Agregar vehiculo</a>
        </div>
    </div>

</asp:Content>
