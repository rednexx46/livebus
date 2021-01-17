$(document).ready(function () {
  (function ($) {
    "use strict";

    jQuery.validator.addMethod(
      "answercheck",
      function (value, element) {
        return this.optional(element) || /^\bcat\b$/.test(value);
      },
      "type the correct answer -_-"
    );

    // validate contactForm form
    $(function () {
      $("#contactForm").validate({
        rules: {
          name: {
            required: true,
            minlength: 2,
          },
          subject: {
            required: true,
            minlength: 4,
          },
          number: {
            required: true,
            minlength: 5,
          },
          email: {
            required: true,
            email: true,
          },
          message: {
            required: true,
            minlength: 20,
          },
        },
        messages: {
          name: {
            required: "Anda lá, é óbvio que tens um nome, certo?",
            minlength: "O teu nome tem de ter mais de 2 caractéres certo?",
          },
          subject: {
            required: "Anda lá, é óbvio que tens um assunto, certo?",
            minlength: "O teu assunto tem de ter mais de 4 caractéres",
          },
          number: {
            required: "Anda lá, é óbvio que tens um número, don't you?",
            minlength: "your Number must consist of at least 5 characters",
          },
          email: {
            required: "Sem email, Sem mensagem",
          },
          message: {
            required:
              "Hum claro, tens de escrever algo para enviar a mensagem...",
            minlength: "Só tens isso para dizer? A sério?",
          },
        },
        submitHandler: function (form) {
          $(form).ajaxSubmit({
            type: "POST",
            data: $(form).serialize(),
            url: "contact_process.php",
            success: function () {
              $("#contactForm :input").attr("disabled", "disabled");
              $("#contactForm").fadeTo("slow", 1, function () {
                $(this).find(":input").attr("disabled", "disabled");
                $(this).find("label").css("cursor", "default");
                $("#success").fadeIn();
                $(".modal").modal("hide");
                $("#success").modal("show");
              });
            },
            error: function () {
              $("#contactForm").fadeTo("slow", 1, function () {
                $("#error").fadeIn();
                $(".modal").modal("hide");
                $("#error").modal("show");
              });
            },
          });
        },
      });
    });
  })(jQuery);
});
