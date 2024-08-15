/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function llenarFormulario(fila) {
    var id = $(fila).find(".id").text();
    var nombres = $(fila).find(".nombres").text();
    var correo = $(fila).find(".correo").text();
    var usuario = $(fila).find(".usuario").text();
    var password = $(fila).find(".password").text();
    var cargo = $(fila).find(".cargo").text();

    
    $("#txtID").val(id);
    $("#txtNombre").val(nombres);
    $("#txtCorreo").val(correo);
    $("#txtUsuario").val(usuario);
    $("#txtContrasena").val(password);
    $("#txtCargo option[selected]").removeAttr('selected');
    $("#txtCargo option:contains(" + cargo + ")").attr('selected', true);
}


$(document).ready(function () {
    $("#exampleModal").on("hidden.bs.modal", function () {
        $("#form")[0].reset();
        $("#txtCargo option[selected]").removeAttr('selected');
    });
    $(document).on('click', '.btnEditar', function () {
        llenarFormulario($(this).closest('tr'));
    });
    $(document).on('click', '.btnEliminar', function () {
        llenarFormulario($(this).closest('tr'));
    });
});
