/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
 function llenarFormulario(fila){
    var codigo = $(fila).find(".codigo").text();
    var descripcion = $(fila)(".descripcion").text();
     
     $("#txtID").val(codigo);
     $("#txtDescripcion").val(descripcion);
 }
    
 $(document).ready(function (){
     
     $(document.on('click', '.btnEditar', function (){
         llenarFormulario($(this).closest('tr'));
     }));
 });


