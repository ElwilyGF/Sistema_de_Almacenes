

function reemplazarContraseña()
{

    var contra = document.getElementById("contraseña").value;
    var usuario = document.getElementById("usuario").value;
    alert(usuario);
    $.ajax({
        url: "../ajax/usuario.php?op=9",
        type: "POST", 
        data: 
        { 
            clave: contra,
            usuario:usuario
        },
        dataType: "JSON",
        success: function(response) 
        {
            if(response[0]==1)
            {
                $(location).attr("href","login.php");
            }
            else
            {
                alert("la contraseña no se cambio");
            }
        }
    });
    
}