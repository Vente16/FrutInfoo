$(document).ready(function(){
    
    var productos = $('#producto');
    var prov = $('#productov');
    var valp = $('.validarp');
    productos.keyup(function () {


        if (productos.val() === "" || productos.val().length < 6) {
            
            prov.addClass("has-error has-feedback");
            valp.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            prov.removeClass("has-error has-feedback");
            valp.removeClass("glyphicon glyphicon-remove form-control-feedback");

            prov.addClass("has-success has-feedback");
            valp.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    
    var nombres = $('#nombre');
    var nombv = $('#nombrev');
    var valn = $('.validarn');
    nombres.keyup(function () {


        if (nombres.val() === "" || nombres.val().length < 6) {
            
            nombv.addClass("has-error has-feedback");
            valn.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            nombv.removeClass("has-error has-feedback");
            valn.removeClass("glyphicon glyphicon-remove form-control-feedback");

            nombv.addClass("has-success has-feedback");
            valn.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var apellidos = $('#apellido');
    var apellv = $('#apellidov');
    var vala = $('.validara');
    apellidos.keyup(function () {


        if (apellidos.val() === "" || apellidos.val().length < 6) {
            
            apellv.addClass("has-error has-feedback");
            vala.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            apellv.removeClass("has-error has-feedback");
            vala.removeClass("glyphicon glyphicon-remove form-control-feedback");

            apellv.addClass("has-success has-feedback");
            vala.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var tele = $('#telefono');//imput
    var telev = $('#telefonov');//div que encierra todo
    var valt = $('.validart');//span
    tele.keyup(function () {
            if (tele.val()==="" || tele.val().length < 7) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                telev.addClass("has-error has-feedback");
                valt.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                telev.removeClass("has-error has-feedback");
                valt.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                telev.addClass("has-success has-feedback");
                valt.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var cel = $('#celular');
    var celv = $('#celularv');
    var valc = $('.validarc');
    cel.keyup(function () {
            if (cel.val()==="" || cel.val().length < 7) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                celv.addClass("has-error has-feedback");
                valc.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                celv.removeClass("has-error has-feedback");
                valc.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                celv.addClass("has-success has-feedback");
                valc.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var direccion = $('#direccion');
    var direccionv = $('#direccionv');
    var vald = $('.validard');
    direccion.keyup(function () {


        if (direccion.val() === "" || direccion.val().length < 6) {
            
            direccionv.addClass("has-error has-feedback");
            vald.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            direccionv.removeClass("has-error has-feedback");
            vald.removeClass("glyphicon glyphicon-remove form-control-feedback");

            direccionv.addClass("has-success has-feedback");
            vald.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    
    
    
    
    
});


