$(document).ready(function(){
    
    var nombreI = $('#nombre_insumo');
    var Insv = $('#nombrev');
    var vali = $('#validarn');
    nombreI.keyup(function () {


        if (nombreI.val() === "" || nombreI.val().length < 6) {

            Insv.addClass("has-error has-feedback");
            vali.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            Insv.removeClass("has-error has-feedback");
            vali.removeClass("glyphicon glyphicon-remove form-control-feedback");

            Insv.addClass("has-success has-feedback");
            vali.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
     var cant = $('#cantidad');
    var cantv = $('#cantidadv');
    var valc = $('#validarc');
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
            
    var autz = $('#autorizar');
    var autv = $('#autorizarv');
    var valA = $('#validara');
    autz.keyup(function () {


        if (autz.val() === "" || autz.val().length < 1) {

            autv.addClass("has-error has-feedback");
            valA.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {

            autv.removeClass("has-error has-feedback");
            valA.removeClass("glyphicon glyphicon-remove form-control-feedback");

            autv.addClass("has-success has-feedback");
            valA.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var fechaSol = $('#fecha_solicitud');
    var fechaSolv = $('#fechav');
    var valFs = $('#validaf');
    fechaSol.change(function () {


        if (fechaSol.val() === "") {
            
            fechaSolv.addClass("has-error has-feedback");
            valFs.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            fechaSolv.removeClass("has-error has-feedback");
            valFs.removeClass("glyphicon glyphicon-remove form-control-feedback");

            fechaSolv.addClass("has-success has-feedback");
            valFs.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    var fechaAut = $('#fecha_aut');
    var fechaAv = $('#fechAv');
    var valFa = $('#validarFA');
    fechaAut.change(function () {


        if (fechaAut.val() === "") {
            
            fechaAv.addClass("has-error has-feedback");
            valFa.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            fechaAv.removeClass("has-error has-feedback");
            valFa.removeClass("glyphicon glyphicon-remove form-control-feedback");

            fechaAv.addClass("has-success has-feedback");
            valFa.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });
    
    
    
    
    
    
    
    
});


