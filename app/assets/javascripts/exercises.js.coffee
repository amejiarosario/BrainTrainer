# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# http://js2coffee.org/

$(document).ready ->
  $("#done_btn").click ->
    $(".op_text_answer").each ->
      id = parseInt($(this).attr("id").replace("op_", ""))
      sum = 0
      $("div.op" + id).each ->
        sum += parseInt($(this).text())

      res = parseInt($("#op_" + id).val())
      if res is sum
        console.log "right"
      else
        console.log "wrong"
        $("#op_" + id).attr "style", "color:red;"
