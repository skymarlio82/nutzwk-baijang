/* jQuery Pre loader
 -----------------------------------------------*/
$(window).load(function() {
	$('.preloader').fadeOut(1000); // set duration in brackets    
});

/* Mobile Navigation
 -----------------------------------------------*/
$(window).scroll(function() {
	if ($(".navbar").offset().top > 50) {
		$(".navbar-fixed-top").addClass("top-nav-collapse");
	} else {
		$(".navbar-fixed-top").removeClass("top-nav-collapse");
	}
});

/* HTML document is loaded. DOM is ready. 
 -------------------------------------------*/
$(document).ready(function() {

	/* Hide mobile menu after clicking on a link
	  -----------------------------------------------
	$('.navbar-collapse a').click(function () {
		$(".navbar-collapse").collapse('hide');
	});*/
	
	var topMenuHeight = 70;
	$('ul.nav a[href*=#]').on('click', function (e) {
        //e.preventDefault();
        var aid = $(this).data("sect");

        if($(aid).length>0) {
            $('html, body').animate({
                scrollTop: $(aid).offset().top - topMenuHeight
            }, 500, 'linear');
        }
   });	
	
	var stop = 0, otop =0;
	$(window).on('scroll', function(){
		stop = $(this).scrollTop();
		otop = $("#overview").offset().top;
		if(stop > otop)
		{
			$(".navbar").css('background-color','#eeeeee');
			$(".navbar .nav li a").css('color','#000000');
			$(".navbar .dropdown-menu").css('background-color','#eeeeee');
		}
		else
		{
			$(".navbar").css('background-color','#000000');
			$(".navbar .nav li a").css('color','#ffffff');
			$(".navbar .dropdown-menu").css('background-color','#707070');
		}
	});
	$(".navbar .nav li a").on("mouseover", function(){
		$(this).css('color','#d9232d');
	}).on("mouseleave", function(){
		if(stop > otop)
			$(this).css('color','#000000');
		else
			$(this).css('color','#ffffff');
	});
	
	// HOME SLIDER & COURSES & CLIENTS
	$('.home-slider').owlCarousel({
		animateOut : 'fadeOut',
		items : 1,
		loop : false,
		dots : false,
		autoplayHoverPause : false,
		autoplay : false
	});
	
	$(".item-first").css({ "height": $(window).innerHeight() + "px" });

	/* Parallax section
	 * $('#venue').parallax("100%", 0.1);
	   -----------------------------------------------*/
	function initParallax() {
		$('#home').parallax("100%", 0.1);
		$('#overview').parallax("100%", 0.1);
		//$('#detail').parallax("100%", 0.1);
		$('#speakers').parallax("100%", 0.1);
		
		$('#sponsors').parallax("100%", 0.1);
		$('#companies').parallax("100%", 0.1);
	}

	initParallax();

	/* Owl Carousel
	   -----------------------------------------------*/
	$(document).ready(function () {
		$("#owl-speakers").owlCarousel({
			autoPlay : 1500,
			items : 4,
			itemsDesktop : [ 1199, 2 ],
			itemsDesktopSmall : [ 979, 1 ],
			itemsTablet : [ 768, 1 ],
			itemsTabletSmall : [ 985, 2 ],
			itemsMobile : [ 479, 1 ]
		});
	});

	/* Back top
	   -----------------------------------------------*/
	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('.go-top').fadeIn(200);
		} else {
			$('.go-top').fadeOut(200);
		}
	});

	// Animate the scroll to top
	$('.go-top').click(function (event) {
		event.preventDefault();
		$('html, body').animate({
			scrollTop : 0
		}, 300);
	});

	/* wow
	   -------------------------------*/
	new WOW({
		mobile : false
	}).init();

	/*
	$('.img-zoom-wrap img').hover(function () {
		$(this).stop().animate({ 'opacity' : '0.5', 'width' : '125%', 'height' : '125%', 'top' : '-100px', 'left' : '-100px' });
	}, function () {
		$(this).stop().animate({ 'opacity' : '1', 'width' : '100%', 'height' : '100%', 'top' : '0px', 'left' : '0px' });
	});
	*/

});

// =============================================================================================================

// Pretty Photo
$("a[rel^='prettyPhoto']").prettyPhoto({
	social_tools : false
});

$(".box").hover(function() {
	$(this).find('.icon').addClass("animated fadeInDown");
	$(this).find('p').addClass("animated fadeInUp");
}, function() {
	$(this).find('.icon').removeClass("animated fadeInDown");
	$(this).find('p').removeClass("animated fadeInUp");
});

$("#btnLoginSubmit").click(function (event) {
	event.preventDefault();
	var frmData = { username : $("#username").val(), password : $("#password").val() };
	$.ajax({
		url :  _contextRoot + '/app/cms/user/doLogin',
		type : 'POST',
		data : JSON.stringify(frmData),
		contentType : 'application/json;charset=utf-8',
		success : function (data) {
			if (data.code == 0) {
				window.location.replace(_contextRoot + "/");
			} else {
				$("#errMsg").empty();
				$("#errMsg").html(data.msg);
			}
		},
		error : function (e) {
			alert("error - " + error.status);
		}
	});
});

$("#btnRegSubmit").click(function (event) {
	event.preventDefault();
	var frmData = { username : $("#_username").val(), password : $("#_password").val(), alias : $("#alias").val(), email : $("#_email").val() };
	$.ajax({
		url :  _contextRoot + '/app/cms/user/doRegister',
		type : 'POST',
		data : JSON.stringify(frmData),
		contentType : 'application/json;charset=utf-8',
		success : function (data) {
			if (data.code == 0) {
				$("#_username").val('');
				$("#_password").val('');
				$("#_repassword").val('');
				$("#alias").val('');
				$("#_email").val('');
				alert("注册成功!请登录");
			}
		},
		error : function (e) {
			alert("error - " + error.status);
		}
	});
});

$("#btnMsgSubmit").click(function (event) {
	event.preventDefault();
	var frmData = { name : $("#msgUname").val(), email : $("#msgEmail").val(), content : $("#msgContent").val() };
	$.ajax({
		url :  _contextRoot + '/app/cms/usermessage/insertNew',
		type : 'POST',
		data : JSON.stringify(frmData),
		contentType : 'application/json;charset=utf-8',
		success : function (data) {
			if (data.code == 0) {
				$("#msgUname").val('');
				$("#msgEmail").val('');
				$("#msgContent").val('');
				alert("成功提交");
			} else {
				alert(data.msg);
			}
		},
		error : function (e) {
			alert("error - " + error.status);
		}
	});
});

$("#btnLogout").click(function (event) {
	event.preventDefault();
	$.ajax({
		url :  _contextRoot + '/app/cms/user/logout',
		type : 'GET',
		contentType : 'application/json;charset=utf-8',
		success : function (data) {
			if (data.code == 0) {
				window.location.replace(_contextRoot + "/");
			} else {
				alert(data.msg);
			}
		},
		error : function (e) {
			alert("error - " + error.status);
		}
	});
});
