$(document).ready(function(){
    
    var codigo = $('#codigo');
    var codv = $('#codigov');
    var valc = $('#validarc');
    codigo.keyup(function () {
            if (codigo.val()==="" || codigo.val().length < 3) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                codv.addClass("has-error has-feedback");
                valc.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                codv.removeClass("has-error has-feedback");
                valc.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                codv.addClass("has-success has-feedback");
                valc.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var tipo = $('#tipo');
    var tipov = $('#tipov');
    var valt = $('#validart');
    tipo.keyup(function () {


        if (tipo.val() === "" || tipo.val().length < 5) {

            tipov.addClass("has-error has-feedback");
            valt.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            tipov.removeClass("has-error has-feedback");
            valt.removeClass("glyphicon glyphicon-remove form-control-feedback");

            tipov.addClass("has-success has-feedback");
            valt.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var peso = $('#peso');
    var pesov = $('#pesov');
    var valp = $('#validarp');
    peso.keyup(function () {


        if (peso.val() === "" || peso.val().length < 4) {

            pesov.addClass("has-error has-feedback");
            valp.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            pesov.removeClass("has-error has-feedback");
            valp.removeClass("glyphicon glyphicon-remove form-control-feedback");

            pesov.addClass("has-success has-feedback");
            valp.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var insumo = $('#nombreI');
    var insv = $('#insumov');
    var vali = $('#validari');
    insumo.keyup(function () {


        if (insumo.val() === "" || insumo.val().length < 4) {

            insv.addClass("has-error has-feedback");
            vali.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            insv.removeClass("has-error has-feedback");
            vali.removeClass("glyphicon glyphicon-remove form-control-feedback");

            insv.addClass("has-success has-feedback");
            vali.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var cantidad = $('#cantidad');
    var cantv = $('#cantidadv');
    var valc = $('#validarc');
    cantidad.keyup(function () {
        if (cantidad.val() === "" || cantidad.val().length < 1) {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            cantv.addClass("has-error has-feedback");
            valc.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            cantv.removeClass("has-error has-feedback");
            valc.removeClass("glyphicon glyphicon-remove form-control-feedback");

            cantv.addClass("has-success has-feedback");
            valc.addClass("glyphicon glyphicon-ok form-control-feedback");
        }
    });
    
    var valor = $('#valor');
    var valorv = $('#valorv');
    var valv = $('#validarv');
    valor.keyup(function () {
        if (valor.val() === "" || valor.val().length > 4) {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            valorv.addClass("has-error has-feedback");
            valv.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            this.value = (this.value + '').replace(/[^0-9]/g, '');
            valorv.removeClass("has-error has-feedback");
            valv.removeClass("glyphicon glyphicon-remove form-control-feedback");

            valorv.addClass("has-success has-feedback");
            valv.addClass("glyphicon glyphicon-ok form-control-feedback");
        }
    });
    
    var fechI = $('#fecha_ingreso');
    var fechav = $('#fechIv');
    var valf = $('#validarfi');
    fechI.change(function () {


        if (fechI.val() === "") {
            
            fechav.addClass("has-error has-feedback");
            valf.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            fechav.removeClass("has-error has-feedback");
            valf.removeClass("glyphicon glyphicon-remove form-control-feedback");

            fechav.addClass("has-success has-feedback");
            valf.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var fechaV = $('#fecha_venc');
    var fechaVenv = $('#fechaVv');
    var valfv = $('#validarfv');
    fechaV.change(function () {


        if (fechaV.val() === "") {
            
            fechaVenv.addClass("has-error has-feedback");
            valfv.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            fechaVenv.removeClass("has-error has-feedback");
            valfv.removeClass("glyphicon glyphicon-remove form-control-feedback");

            fechaVenv.addClass("has-success has-feedback");
            valfv.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var prioridad = $('#prioridad');
    var priov = $('#prioridadv');
    var valpr = $('#validarp');
    prioridad.keyup(function () {


        if (prioridad.val() === "" || prioridad.val().length < 4) {

            priov.addClass("has-error has-feedback");
            valpr.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            priov.removeClass("has-error has-feedback");
            valpr.removeClass("glyphicon glyphicon-remove form-control-feedback");

            priov.addClass("has-success has-feedback");
            valpr.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    
   
    
    
});


