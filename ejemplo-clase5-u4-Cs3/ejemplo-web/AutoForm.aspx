<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemplo_web.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--
    <%--
            public string Color { get; set; }
            public DateTime Fecha { get; set; }
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

            </div>

        </div>
    </div>

</asp:Content>
