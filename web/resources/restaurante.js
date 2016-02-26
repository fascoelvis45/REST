/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


  function cargarURL(url,idContenedor) {
             
            $.get(url).done(function(data) {
               
                $("#" + idContenedor).html(data);
            });

        }