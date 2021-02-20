<%@ Page Title="" Language="C#" MasterPageFile="~/adm/MasterAdm.Master" AutoEventWireup="true" CodeBehind="usuarioForm.aspx.cs" Inherits="PetShopDoBairro.adm.usuarioForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <!-- Page Heading -->
    <%-- <h1 class="h3 mb-2 text-gray-800">Cadastro do usuário</h1>--%>

    <div class="card shadow">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Cadastro do usuário</h6>
        </div>
        <div class="card-body">
            <div class="form-group">
                <label>Nome</label>
                <asp:TextBox runat="server" class="form-control" ID="txtNome" />
            </div>
            <div class="form-group">
                <label>CPF/CNPJ</label>
                <asp:TextBox runat="server" class="form-control" ID="txtCPFCNPJ" />
            </div>
            <div class="form-group">
                <label>Tipo de pessoa</label>
                <asp:TextBox runat="server" class="form-control" ID="txtTipoPessoa" />
            </div>
            <div class="form-group">
                <label>E-mail</label>
                <asp:TextBox runat="server" type="email" class="form-control" ID="txtEmail" />
            </div>
            <div class="form-group">
                <label>Senha</label>
                <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtSenha" />
            </div>
            <div class="form-group">

                <asp:CheckBox runat="server" ID="ckbAtivo" Text="Ativo" />
            </div>
            <div class="form-group">
                <asp:Button runat="server" ID="btnSalvar" Text="Salvar" class="btn btn-primary"
                    OnClick="btnSalvar_Click"/>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceScript" runat="server">
</asp:Content>
