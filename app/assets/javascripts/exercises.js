var total_op = -1;
var good_to_submit_on_enter = false;
$(document).ready(function(){
	// prevent submit form on enter
	// $(window).keydown(function(event){
	// 	console.log("keydown = "+event);
	// 	console.log("keydown.which = "+event.which);
	// 	if( (event.keyCode == 13) && (validationFunction() == false) ) {
	// 		console.log("Prevent default and press tab ");
	// 		event.preventDefault();
	// 		// press tab instead
	// 		e = jQuery.Event("keydown"); 
	// 		e.which = 9;
	// 		$(window).trigger(e);
	// 		
	// 		return false;
	// 	}
	// });
	
	
	// hide done button
	$(".form-actions").hide();
	
	// hide all operations
	$(".operation").each(function(){
		$(this).hide()
	});
	
	var current = 0;
	// start button
	$("#start-btn").click(function(){
		console.log("click start");
		// TODO show at the end $(".form-actions").show();
		$("#op"+current).show().addClass("focus");
		$("#op"+(current+1)).show(1000);
		
		total_op = -1;
		// display next operation when text change
		$(".operation").each(function(){
			total_op++;
			var id = $(this).attr("id");
			var num = parseInt($(this).attr("id").substring(2));
			
			console.log("id = "+id+"; results_"+num);
			
			$("#results_"+num).change(function(){
				console.log("change for "+$(this).attr("id")+"; "+id+".removeClass");
				showNext(num);
			});
			
			// $("#results_"+num).keyup(function(event){
			// 	if(event.keyCode == 13){
			// 		event.preventDefault();
			// 		showNext(num);
			// 	}
			// });
			
		});
		
		// focus on textbox
		
		
		//TODO start timer
		$("#start-btn").hide();
	});
});

function showNext(current_op){
	console.log("showNext.op="+current_op)
	$("#op"+(current_op+1)+" input").focus();
	$("#op"+current_op).removeClass("focus",1000);
	$("#op"+(current_op+1)).addClass("focus",1000);
	$("#op"+(current_op+2)).show(1000);
	if (current_op === total_op){
		good_to_submit_on_enter = true;
		$(".form-actions").show();
		$("#done_btn").focus();
	}
}

// function validationFunction() {
//   if(good_to_submit_on_enter) {
//     return true;
//   } 
//   return false;
// }


/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# http://js2coffee.org/

$(document).ready ->
    current = 0
	$(".form-actions").hide()
		
	# start buton show the operations and start timer.
	$("#start-btn").click ->
		$(".form-actions").show()
		$("#start-btn").hide()
		# TODO start timer
		# Show only current
		$("#op"+current).show().addClass("focus")
		$("#op"+current+1).show()
	
	# hide all operations
	$(".operation").each ->
		$(this).hide()
		
	
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
*/