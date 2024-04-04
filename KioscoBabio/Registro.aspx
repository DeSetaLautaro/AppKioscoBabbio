<%@ Page Title="" Language="C#" MasterPageFile="~/Menú.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="KioscoBabio.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <%--script que muestra u oculta el boton para ir a la página de registro móvil cuando la pantalla se achica--%>
    <script type="text/javascript">
        function ocultarMostrarBoton() {
            var boton = document.getElementById('<%=BotonRegistro.ClientID %>')
            var ColRegistro = document.getElementById('ColumnaRegistro')
            if (window.innerWidth > 767) {
                boton.style.display = 'none';
                ColRegistro.style.display = 'block';
            } else {
                boton.style.display = 'block';
                ColRegistro.style.display = 'none';
            }
        }

        window.onload = ocultarMostrarBoton; // Llama a la función al cargar la página
        window.onresize = ocultarMostrarBoton; // Llama a la función cuando cambia el tamaño de la pantalla
    </script>
    
    <section id="Registro" class="align-items-stretch">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6">
                    <h1>Login</h1>
                    <form>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nombre de usuario</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtNombreUsuarioLogin" aria-describedby="emailHelp" />
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                            <asp:TextBox runat="server" type="password" class="form-control" ID="txtContraseñaLogin" />
                        </div>

                        <asp:Button runat="server" Text="Ingresar" id="botonIngresar" OnClick="botonIngresar_Click" cssclass="btn btn-primary"></asp:Button>
                        <asp:Button runat="server" ID="BotonRegistro" type="submit" Text="Registrarse" OnClick="BotonRegistro_Click" class="btn btn-primary mt-2"></asp:Button>
                    </form>
                </div>

                <div ID="ColumnaRegistro" class="col-12 col-md-6">
                    <h1>Registro</h1>
                    <div class="row g-3">
                         <div class="col-12">
                            <label for="inputEmail4" class="form-label">Nombre de usuario</label>
                            <asp:TextBox runat="server"  class="form-control" ID="txtNombreDeUsuario" TextMode="SingleLine" />
                        </div>
                        <div class="col-12">
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

                        <div class="row">
                            <div class="col-6">
                                <label for="inputCity" class="form-label">Localidad</label>
                                <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="txtLocalidad" />
                            </div>
                        </div>

                        <div class="col-12 col-md-3" style="margin-top:8px">
                            <asp:Image width="120" AlternateText="FotoPerfil" class="rounded-circle" ID="imgUsuarioRegistro" src="Images/PerfilSinFoto.jpeg" runat="server" />
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
                            <asp:Button runat="server" Text="Registrarse" ID="btnRegistrarse" CssClass="btn btn-primary" OnClick="btnRegistrarse_Click" />
                       
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
