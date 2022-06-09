$(document).on('turbolinks:load', function() {
  $(".rad-toggle-btn").on('click', function() {
    $(".rad-sidebar").toggleClass("rad-nav-min");
    $(".rad-body-wrapper").toggleClass("rad-nav-min");
    event.preventDefault();
  }).trigger('click');


  $("#login-form-validation").validate({
              rules: {
                  "user[email]": "required",
                  "user[password]": "required"
              },
              messages: {

              },
               errorPlacement: function(error, element)
      {
          if ( element.is(":radio") )
          {
              error.appendTo( element.parents('.field') );
          }
          else
          { // This is the default behavior
              error.insertAfter( element );
          }
       },
              submitHandler: function(form) {
                  form.submit();
              }

  });

});
