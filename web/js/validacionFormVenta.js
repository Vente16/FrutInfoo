$(document).ready(function(){
    
    var cant = $('#cantidad');//imput
    var cantv = $('#cantidadv');//div que encierra todo
    var valc = $('#validarcp');//span
    cant.keyup(function () {
            if (cant.val()==="" || cant.val().length < 1) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                cantv.addClass("has-error has-feedback");
                valc.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                cantv.removeClass("has-error has-feedback");
                valc.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                cantv.addClass("has-success has-feedback");
                valc.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var precio = $('#precio');
    var preciov = $('#preciov');
    var valp = $('#validarp');
    precio.keyup(function () {
            if (precio.val()==="" || precio.val().length < 4) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                preciov.addClass("has-error has-feedback");
                valp.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                preciov.removeClass("has-error has-feedback");
                valp.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                preciov.addClass("has-success has-feedback");
                valp.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var iva = $('#iva');
    var ivav = $('#ivav');
    var vali = $('#validari');
    iva.keyup(function () {
            if (iva.val()==="" || iva.val().length < 3) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                ivav.addClass("has-error has-feedback");
                vali.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                ivav.removeClass("has-error has-feedback");
                vali.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                ivav.addClass("has-success has-feedback");
                vali.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var total = $('#total');
    var totalv = $('#totalv');
    var valt = $('#validart');
    total.keyup(function () {
            if (total.val()==="" || total.val().length < 4) {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                totalv.addClass("has-error has-feedback");
                valt.addClass("glyphicon glyphicon-remove form-control-feedback");
            }else {
                this.value = (this.value + '').replace(/[^0-9]/g, '');
                totalv.removeClass("has-error has-feedback");
                valt.removeClass("glyphicon glyphicon-remove form-control-feedback");
                
                totalv.addClass("has-success has-feedback");
                valt.addClass("glyphicon glyphicon-ok form-control-feedback");
            }
            });
            
    var fecha = $('#fecha');
    var fechav = $('#fechav');
    var valf = $('#validarFech');
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
            
            
    
    
    
});


