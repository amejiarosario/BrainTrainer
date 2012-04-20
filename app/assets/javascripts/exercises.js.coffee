# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# http://js2coffee.org/

$(document).ready ->
	# Get all the answers in the textboxes
  $(".op_text_answer").each ->
    id = parseInt($(this).attr("id").replace("op_", ""))
    sum = 0
    $("div.op" + id).each ->
      sum += parseInt($(this).text())
		# put the sum in the textbox
    $("#op_" + id).val sum