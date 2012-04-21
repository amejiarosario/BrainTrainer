# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# http://js2coffee.org/

$(document).ready ->
	$("#done_btn").click ->
		$(".op_text_answer").each ->
			id = parseInt($(this).attr("id").replace("op_", ""))
			sum = 0
			$("label.op" + id).each ->
				sum += parseInt($(this).text())

			res = parseInt($("#results_" + id).val())
			if res is sum
				console.log "right"
				$("div#op"+id).removeClass("error")
				$("div#op"+id).addClass("success")
			else
				console.log "wrong. should be " + sum + "instead of "+ res
				$("div#op"+id).removeClass("success")
				$("div#op"+id).addClass("error")
