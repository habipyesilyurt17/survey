require("@rails/ujs").start();
//require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("jquery");

$(document).on("click", ".add_fields", function (e) {
  var regexp, time;
  time = new Date().getTime();
  regexp = new RegExp($(this).data("id"), "g");
  $(".fields").append($(this).data("fields").replace(regexp, time));
  return e.preventDefault();
});

$(document).on("click", ".remove_record", function (e) {
  $(this).prev("input[type=hidden]").val("1");
  $(this).closest("tr").hide();
  return e.preventDefault();
});
