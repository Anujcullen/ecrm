// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require jquery-ui/widgets/datepicker
//= require dataTables/jquery.dataTables
//= require activestorage
//= require turbolinks
//= require foundation
//= require jquery.validate.additional-methods
//= require jquery.validate
//= require bootstrap-sprockets

//= require_tree

$(document).on('turbolinks:load', function() {
  $(function(){ $(document).foundation(); });

  // full screen code
  $( "#goFS" ).click(function() {
    if (document.fullscreenElement) {
      document.exitFullscreen()
        .then(() => console.log("Document Exited form Full screen mode"))
        .catch((err) => console.error(err))
    } else {
      document.documentElement.requestFullscreen();
    }
  });
//navigation toogle
  $(".hamburger").click(function(){
  $(".wrapper").toggleClass("active")
})

});


var image = [];

//initialize array indeces
//image[0] = "/images/pm-image.png";


//whenever the DOM is ready
$(document).ready(function() {
  //everytime the page fully loads
  $(window).load(function() {
    //checks if localStorage.imageCycle exists
    if(localStorage.imageCycle) {
      //if yes increment localStorage.imageCycle by 1
      localStorage.imageCycle = Number(localStorage.imageCycle) + 1;
      //checks if localStorage.imageCycle has reached the max index
      if(localStorage.imageCycle > (image.length-1)) {
        //revert localStorage.imageCycle to 0
        localStorage.imageCycle = 0;
      }
    } else {
      //if localStorage.imageCycle doesn't exist, create one for the user.
      localStorage.imageCycle = 0;
    }
    //cycle on background images.
    $(".body").css({
      "background": 'url("' + image[localStorage.imageCycle] + '") no-repeat fixed center',
      "background-size": "cover"
    });
  });
});
