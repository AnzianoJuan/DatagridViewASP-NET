<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemplo_web.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--
    <%--
            public bool Usado { get; set; }
            public bool Importado { get; set; } --%>


    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="TextBoxId" class="form-label">ID</label>
                <asp:TextBox runat="server" ID="TextBoxId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="TextBoxModelo" class="form-label">Modelo</label>
                <asp:TextBox runat="server" ID="TextBoxModelo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="TextBoxDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxDescripcion" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="TextBoxColor" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="TextBoxFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="TextBoxFecha" CssClass="form-control" />
            </div>

            <asp:CheckBox Text="" ID="CheckBoxUsado" runat="server" />
            <label class="form-check-label">Usado</label>

            <div class="mb-3">
                <asp:RadioButton AutoPostBack="true" ID="RadioButtonImportado" OnCheckedChanged="RadioButtonImportado_CheckedChanged" Text="Importado" runat="server" GroupName="Importado" />
                <asp:RadioButton AutoPostBack="true" ID="RadioButtonNacional" Text="Nacional" OnCheckedChanged="RadioButtonImportado_CheckedChanged" Checked="true" runat="server" GroupName="Importado" />
            </div>
            <div class="mb-3">
                <asp:Button ID="ButtonAgregarAuto" CssClass="btn btn-primary" runat="server" OnClick="ButtonAgregarAuto_Click" Text="Aceptar" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>

</asp:Content>
