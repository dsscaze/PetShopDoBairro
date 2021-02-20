﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adm/MasterAdm.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="PetShopDoBairro.adm.usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Usuários</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <a href="usuarioForm.aspx" class="btn btn-primary">Novo</a>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Ativo</th>
                            <th>CPF/CNPJ</th>
                            <th>Tipo Pessoa</th>

                        </tr>
                        <%--</thead>
                    <tfoot>
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Office</th>
                            <th>Age</th>
                            <th>Start date</th>
                            <th>Salary</th>
                        </tr>
                    </tfoot>--%>
                    <tbody>
                        <asp:Repeater runat="server" ID="rptUsuarios">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a href='<%# "usuarioForm.aspx?id=" + Eval("ID") %>'>
                                            <%# Eval("Nome") %>
                                        </a>
                                    </td>
                                    <td><%# Eval("EMAIL") %></td>
                                    <td><%# Eval("Ativo") %></td>
                                    <td><%# Eval("CPFCNPJ") %></td>
                                    <td><%# Eval("TIPOPESSOA") %></td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceScript" runat="server">
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
    </script>
</asp:Content>


