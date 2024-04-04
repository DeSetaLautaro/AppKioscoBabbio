<%@ Page Title="" Language="C#" MasterPageFile="~/Menú.Master" AutoEventWireup="true" CodeBehind="RegistroMovil.aspx.cs" Inherits="KioscoBabio.RegistroMovil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <h1>Registro</h1>
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <!-- Agregar la clase offset-md-3 al contenedor del formulario -->
                <form class="row g-3">
                    <div class="col-md-12">
                        <label for="inputEmail4" class="form-label">Nombre de usuario</label>
                        <asp:TextBox runat="server" class="form-control" ID="txtNombreDeUsuario" TextMode="SingleLine" />
                    </div>
                    <div class="col-md-12">
                        <label for="inputPassword4" class="form-label">Contraseña</label>
                        <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPass" />
                    </div>
                    <div class="col-12">
                        <label for="inputEmail4" class="form-label">Email</label>
                        <asp:TextBox runat="server" TextMode="Email" class="form-control" ID="txtEmail" />
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Dirección</label>
                        <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="txtDireccion" />
                    </div>
                        <div class="col-12">
                            <label for="inputCity" class="form-label">Localidad</label>
                            <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="txtLocalidad" />
                        </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">State</label>
                            <select id="inputState" class="form-select">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="col-6" style="margin-top: 8px">
                            <asp:Image Width="120" AlternateText="FotoPerfil" class="rounded-circle" ID="imgUsuarioRegistro" src="Images/PerfilSinFoto.jpeg" runat="server" />
                        </div>

                    </div>

                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                                Check me out
                            </label>
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

</asp:Content>
