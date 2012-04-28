var total_op = -1;
var good_to_submit_on_enter = false;
var operation_form_control_buttons = ".operations-form .form-actions"


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
	
	filterForNumericTypes();
	
	// hide done button
	$(operation_form_control_buttons).hide();
	
	
	// hide all operations (now done by css)
	/*
	$(".operation").each(function(){
		$(this).hide()
	});
	*/
	
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
		createTimerHTML();
		startTimer();
	});
});

function showNext(current_op){
	console.log("showNext.op => "+current_op+" / "+ total_op)
		setUserProgres(parseInt(100*parseInt(current_op)/parseInt(total_op)));
	$("#op"+(current_op+1)+" input").focus();
	$("#op"+current_op).removeClass("focus",1000);
	$("#op"+(current_op+1)).addClass("focus",1000);
	$("#op"+(current_op+2)).show(1000);
	if (current_op === total_op){
		good_to_submit_on_enter = true;
		$(operation_form_control_buttons).show();
		$("#done_btn").focus();
	}
}

function filterForNumericTypes(){
	$('*[type="number"]').keyup(function() {
		if (this.value.match(/[^0-9]/g)) {
			this.value = this.value.replace(/[^0-9]/g, '');
		}
	});
}

function startTimer(){
	setTimeout(function(){
		var actual = parseInt($("#timer").text());
		$("#timer").text(actual+1);
		$("#elapsed_time").val(actual+1);
		startTimer();
	},1000);
}


function createTimerHTML(){
	var sidebar = $("div.span3 div.sidebar-nav-fixed");
	sidebar.show();
	sidebar.find('h3').text("Your Progress");
	var c = sidebar.find('ul');
	c.html('');
	c.append('<h4>Time</h4>');
	c.append('<div id="timer">0</div>');
	c.append('<h4>Exercises Completed</h4>');
	c.append('<div class="progress progress-striped active"><div id="user_progress" class="bar" style="width: 40%;"></div></div>');
	setUserProgres(0);
	
	//sidebar.find('ul li:first').text('Time');
	//sidebar.find('ul li[1]').innerHTML('<div id="timer">0</div>');
	//sidebar.html('<h3>Your Progress</h3>');
	//sidebar.append('<ul><li class="nav-header">Time</li><li id="timer">0</li><li class="nav-header">Exercises Completed</li><li></li></lul>');
	//sidebar.append('<h3></h3>')
}
// function validationFunction() {
//   if(good_to_submit_on_enter) {
//     return true;
//   } 
//   return false;
// }

function setUserProgres(percentage){
	console.log("setUserProgres = "+ percentage);
	$('#user_progress').attr('style','width:'+percentage+'%');
}


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