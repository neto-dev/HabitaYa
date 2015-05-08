// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

(function(){
	var action = 0;
	$(".more-dashboard").click(function(){
		if (action === 0) {
			$(".more-profile").css({'-webkit-transform' : 'rotate(50deg)',
	                 '-moz-transform' : 'rotate(50deg)',
	                 '-ms-transform' : 'rotate(50deg)',
	                 'transform' : 'rotate(50deg)'});
			$(".hide-profile").show();
			action = 1;
		}else {
			$(".more-profile").css({'-webkit-transform' : 'rotate(0deg)',
	                 '-moz-transform' : 'rotate(0deg)',
	                 '-ms-transform' : 'rotate(0deg)',
	                 'transform' : 'rotate(0deg)'});
			$(".hide-profile").hide();
			action = 0;
		};
	})

	$(".edit-profile").hover(function(){
		$(".edit-profile").css({
			'width' : "150px",
			'border-radius' : "15px",
			'right' : '.8em'
		})
		$(".edit-profile span p").css('display', 'inline-block')
	}).mouseleave(function(){
		$(".edit-profile").css({
			'width' : '27px',
			'border-radius' : '50%',
			'right' : '.8em'
		})
		$(".edit-profile span p").css('display', 'none')
	});

	$(".log-out-profile").hover(function(){
		$(".log-out-profile").css({
			'width' : "150px",
			'border-radius' : "15px",
			'right' : '3.8em'
		})
		$(".log-out-profile span p").css('display', 'inline-block')
	}).mouseleave(function(){
		$(".log-out-profile").css({
			'width' : '27px',
			'border-radius' : '50%',
			'right' : '3.8em'
		})
		$(".log-out-profile span p").css('display', 'none')
	});

	$(".new-pub-profile").hover(function(){
		$(".new-pub-profile").css({
			'width' : "170px",
			'border-radius' : "15px",
			'right' : '.8em'
		})
		$(".new-pub-profile span p").css('display', 'inline-block')
	}).mouseleave(function(){
		$(".new-pub-profile").css({
			'width' : '27px',
			'border-radius' : '50%',
			'right' : '.8em'
		})
		$(".new-pub-profile span p").css('display', 'none')
	});

	var where = 0;
	$(".plus").click(function(){
		var object = "";
		object = $(this).parent(".parent-descriptions");
		$(object).find(".cont-description").toggle()
		if (where === 0){
			$(object).find(".plus").css({'-webkit-transform' : 'rotate(50deg)',
	                 '-moz-transform' : 'rotate(50deg)',
	                 '-ms-transform' : 'rotate(50deg)',
	                 'transform' : 'rotate(50deg)'});
			where = 1;
		}else{
			$(object).find(".plus").css({'-webkit-transform' : 'rotate(50deg)',
	                 '-moz-transform' : 'rotate(0deg)',
	                 '-ms-transform' : 'rotate(0deg)',
	                 'transform' : 'rotate(0deg)'});
			where = 0;
		}
	});


	if( $('.floating-labels').length > 0 ) floatLabels();

	function floatLabels() {
		var inputFields = $('.floating-labels .cd-label').next();
		inputFields.each(function(){
			var singleInput = $(this);
			//check if user is filling one of the form fields 
			checkVal(singleInput);
			singleInput.on('change keyup', function(){
				checkVal(singleInput);	
			});
		});
	}

	function checkVal(inputField) {
		( inputField.val() == '' ) ? inputField.prev('.cd-label').removeClass('float') : inputField.prev('.cd-label').addClass('float');
	}

	$(".opt-select").change(function(){
		value = $(".opt-select").val();
		if (value === "Casa" || value === "Departamento") {
			$(".rooms-cont").show(200)
			$(".bathroom-cont").show(200)
		}
		if (value === "Oficina" || value === "Local") {
			$(".rooms-cont").hide(200)
			$(".bathroom-cont").show(200)
		}
		if (value === "Terreno" || value === "Bodega") {
			$(".rooms-cont").hide(200)
			$(".bathroom-cont").hide(200)
		}
	});

	$(".show-terminos").click(function(e){
		e.preventDefault();
		window.scrollTo(0, 0); 
		$("#cortina, #terminos").show();
	});
	$(".show-politicas").click(function(e){
		e.preventDefault();
		window.scrollTo(0, 0);  
		$("#cortina, #politicas").show();
	});

	$(".close, #cortina").click(function(e){
		e.preventDefault();
		window.scrollTo(0, 0);  
		$("#cortina, #politicas, #terminos").hide();
	});

	$(".show-profile").click(function(){
		$(".show-profile").hide();
		$(".contact").slideToggle();
	})

	$(".close-contact").click(function(){
		$(".show-profile").show();
		$(".contact").slideToggle();
	})

})()