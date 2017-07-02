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
            })
            
    var email = $('#email');
    var emailv = $('#emailv');
    var val = $('#validar');
    email.keyup(function () {


        if (email.val() === "") {
            
            emailv.addClass("has-error has-feedback");
            val.addClass("glyphicon glyphicon-remove form-control-feedback");
        } else {
            
            emailv.removeClass("has-error has-feedback");
            val.removeClass("glyphicon glyphicon-remove form-control-feedback");

            emailv.addClass("has-success has-feedback");
            val.addClass("glyphicon glyphicon-ok form-control-feedback");

        }

    });

});