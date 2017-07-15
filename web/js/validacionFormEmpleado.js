$(document).ready(function () {

    var nombre = $('#nombre');
    var nombrev = $('#nombrev');
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

    var apellido = $('#apellido');
    var apellidov = $('#apellidov');
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

    var telefono = $('#telefono');
    var telefonov = $('#telefonov');
    var valt = $('#validart');
    telefono.keyup(function () {
        if (telefono.val() === "" || telefono.val().length < 7) {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            telefonov.addClass("has-error has-feedback");
            valt.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
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
        if (celular.val() === "" || celular.val().length < 7) {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            celularv.addClass("has-error has-feedback");
            valc.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            celularv.removeClass("has-error has-feedback");
            valc.removeClass("glyphicon glyphicon-remove form-control-feedback");

            celularv.addClass("has-success has-feedback");
            valc.addClass("glyphicon glyphicon-ok form-control-feedback");
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

});


