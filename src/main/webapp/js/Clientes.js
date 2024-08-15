/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function llenarFormulario(fila) {
    var id = $(fila).find(".id").text();
    var nombres = $(fila).find(".nombres").text();
    var telefono = $(fila).find(".telefono").text();
    var correo = $(fila).find(".correo").text();
    var direccion = $(fila).find(".direccion").text();
    var dni = $(fila).find(".dni").text();


    $("#txtID").val(id);
    $("#txtNombre").val(nombres);
    $("#txtTelefono").val(telefono);
    $("#txtCorreo").val(correo);
    $("#txtDireccion").val(direccion);
    $("#txtDNI").val(dni);
}


$(document).ready(function () {
    $("#exampleModal").on("hidden.bs.modal", function () {
        $("#form")[0].reset();
    });
    $(document).on('click', '.btnEditar', function () {
        llenarFormulario($(this).closest('tr'));
    });
    $(document).on('click', '.btnEliminar', function () {
        llenarFormulario($(this).closest('tr'));
    });
});