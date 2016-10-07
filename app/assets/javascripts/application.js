// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .


function change_period() {
  var x = document.getElementById("schedule_period_start").value;
  var elmnt = document.getElementById("schedule_period_end");
  // elmnt.length = 0;
  elmnt.length = 10-x;
  for(var i=0; i < elmnt.length; i++)
  {
    elmnt.options[i].text = parseInt(i)+parseInt(x)+1;
    elmnt.options[i].value = parseInt(i)+parseInt(x)+1;
  }
}

function change_week() {

}
