﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PetShopDoBairro.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceMain" runat="server">
    <div class="container">
        <div class="row">
            <div class="checkout__form">
                <h4>Login</h4>

                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>E-mail<span>*</span></p>
                                <asp:TextBox runat="server" ID="txtEmail" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Senha<span>*</span></p>
                                <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                              <asp:Button runat="server" ID="btEntrar" Text="ENTRAR" class="site-btn" OnClick="btEntrar_Click"/>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceScripts" runat="server">
</asp:Content>
