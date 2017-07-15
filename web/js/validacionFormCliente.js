$(document).ready(function () {
    var doc = $('#documento');
    var docv = $('#documentov');
    var val = $('#validar');
    doc.keyup(function () {
            if (doc.val()==="" || doc.val().length < 6  ) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                docv.addClass("has-error has-feedback");
                val.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                docv.removeClass("has-error has-feedback");
                val.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                docv.addClass("has-success has-feedback");
                val.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var nombre = $('#nombres');
    var nombrev = $('#nombresv');
    var valn = $('#validarn');
    nombre.keyup(function () {


        if (nombre.val() === "" || nombre.val().length < 6) {
            
            nombrev.addClass("has-error has-feedback");
            valn.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            nombrev.removeClass("has-error has-feedback");
            valn.removeClass("glyphicon glyphicon-remove form-control-feedback");

            nombrev.addClass("has-success has-feedback");
            valn.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var apellido = $('#apellidos');
    var apellidov = $('#apellidosv');
    var vala = $('#validara');
    apellido.keyup(function () {


        if (apellido.val() === "" || apellido.val().length < 6) {
            
            apellidov.addClass("has-error has-feedback");
            vala.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            apellidov.removeClass("has-error has-feedback");
            vala.removeClass("glyphicon glyphicon-remove form-control-feedback");

            apellidov.addClass("has-success has-feedback");
            vala.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var fecha = $('#fecha');
    var fechav = $('#fechav');
    var valf = $('#validarf');
    fecha.change(function () {


        if (fecha.val() === "") {
            
            fechav.addClass("has-error has-feedback");
            valf.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            fechav.removeClass("has-error has-feedback");
            valf.removeClass("glyphicon glyphicon-remove form-control-feedback");

            fechav.addClass("has-success has-feedback");
            valf.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var email = $('#email');
    var emailv = $('#emailv');
    var vale = $('#validare');
    email.keyup(function () {
        var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;

        if (!regex.test(email.val())){
            
            emailv.addClass("has-error has-feedback");
            vale.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            emailv.removeClass("has-error has-feedback");
            vale.removeClass("glyphicon glyphicon-remove form-control-feedback");

            emailv.addClass("has-success has-feedback");
            vale.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var municipio = $('#municipio');
    var municipiov = $('#municipiov');
    var valm = $('#validarm');
    municipio.keyup(function () {


        if (municipio.val() === "" || municipio.val().length < 6) {
            
            municipiov.addClass("has-error has-feedback");
            valm.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            municipiov.removeClass("has-error has-feedback");
            valm.removeClass("glyphicon glyphicon-remove form-control-feedback");

            municipiov.addClass("has-success has-feedback");
            valm.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var direccion = $('#direccion');
    var direccionv = $('#direccionv');
    var vald = $('#validard');
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
    
    var barrio = $('#barrio');
    var barriov = $('#barriov');
    var valb = $('#validarb');
    barrio.keyup(function () {


        if (barrio.val() === "" || barrio.val().length < 6) {
            
            barriov.addClass("has-error has-feedback");
            valb.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            barriov.removeClass("has-error has-feedback");
            valb.removeClass("glyphicon glyphicon-remove form-control-feedback");

            barriov.addClass("has-success has-feedback");
            valb.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var telefono = $('#telefono');
    var telefonov = $('#telefonov');
    var valt = $('#validart');
    telefono.keyup(function () {
            if (telefono.val()==="" || telefono.val().length < 7) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                telefonov.addClass("has-error has-feedback");
                valt.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                telefonov.removeClass("has-error has-feedback");
                valt.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                telefonov.addClass("has-success has-feedback");
                valt.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var celular = $('#celular');
    var celularv = $('#celularv');
    var valc = $('#validarc');
    celular.keyup(function () {
            if (celular.val()==="" || celular.val().length < 7) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                celularv.addClass("has-error has-feedback");
                valc.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                celularv.removeClass("has-error has-feedback");
                valc.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                celularv.addClass("has-success has-feedback");
                valc.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });

});