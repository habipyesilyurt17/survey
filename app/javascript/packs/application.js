require("@rails/ujs").start();
//require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("jquery");

$(document).on("load", function () {
  // $("form").on("click", ".remove_record", function (e) {
  //   $(this).prev("input[type=hidden]").val("1");
  //   $(this).closet("tr").hide();
  //   return e.preventDefault();
  // });
  // $("form").on("click", ".add_fields", function (e) {
  //   var regexp, time;
  //   time = new Date().getTime();
  //   regexp = new RegExp($(this).data("id"), "g");
  //   $(".fields").append($(this).data("fields").replace(regexp, time));
  //   return e.preventDefault();
  // });
  // $(document).on("click", ".remove_nested_item", function (event) {
  //   $(this).parent().children(".removable_item")[0].value = "true";
  //   $(this).closest(".eawb-routing-field").hide();
  //   return event.preventDefault();
  // });
});
