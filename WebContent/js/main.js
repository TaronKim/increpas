
$(function(){
	$(".top_menu a").mouseover(function() {
		$(".top_menu a").removeClass("on");
		$(this).addClass("on");
		$(".top .sub").slideDown(200);
		$(this).parent().parent().find(".sub .sub_1").hide();
		$(this).parent().parent().find(".sub .sub_1").eq($(this).index()).show();
	});

	$(".top").mouseleave(function() {
		$(".top .sub").slideUp(200);
	});

	$(".main_con1 li div").mouseover(function() {
		$(this).find("span").slideDown(200);
	});

	$(".main_con1 li div").mouseleave(function() {
		$(this).find("span").slideUp(200);
	});


	$(".pop_close").click(function() {
		$(".pop_ok").fadeOut();
	});


	$(".m_menu").click(function() {
		$(".wrap").append('<div class="black"></div>');
		$(".black").fadeIn(300);
		$("body").css({"overflow" : "hidden"});
		$(".m_submenu").css({"width" : 305});
	});	

	$(".wrap").click(function() {
		if ($(this).hasClass("on")){
			$(".black").fadeOut(300);
			$(".black").remove();
			if(document.body.clientWidth<1008){
				$("body").css({"overflow" : "visible"});
			}
			$(".m_submenu").css({"width" : 0});
			$(this).removeClass("on");
			$(".m_submenu_area ul").slideUp();
		}else {
			$(this).addClass("on");
		}
	});

	$(".m_submenu .m_submenu_layout .m_submenu_area a.depth1").click(function() {
		if ($(this).parent().hasClass("on")){			
			$(".m_submenu_area ul").slideUp();
			$(this).parent().removeClass("on");
			$(this).parent().find("ul").slideUp();
		}else {
			$(".m_submenu_area").removeClass("on");
			$(this).parent().addClass("on");
			$(".m_submenu_area ul").slideUp();
			$(this).parent().find("ul").slideDown();
		}
	});

	$(".table3 tbody td label").click(function() {
		$(this).parent().find("label").removeClass("on");
		$(this).addClass("on");
	});

	$(".table3 tbody td input[type=radio]").click(function() {
		$(this).parent().find("label").removeClass("on");
		$(this).next().addClass("on");
	});
});


$(window).load(function(e) {
	var height1 = $(".main_con").height() -294;
	$(".left_menu").css({"height" :height1});
	
	var height2 = height1 * 0.95;
	$(".scrollcontent1-bar").css({"height" :height2});
	
	
	var height3 = $(".sub_box1").height() + 58;
	$(".quick").css({"height" : height3});


	// 슬라이드
	var current=0;
	var slide_length = $('.slide_ul>li').length;//이미지의 갯수를 변수로
	var btn_ul = '<ul class="slide_btn"></ul>';//버튼 LIST 작성할 UL


	$('.slide_ul>li').hide();//이미지 안보이게
	$('.slide_ul>li').first().show();//이미지 하나만 보이게
	
	
	$(btn_ul).prependTo($('.slide'))//slide 클래스위에 생성
	for (var i = 0 ; i < slide_length; i++){//동그라미 버튼 생성 이미지 li 개수 만큼
		var child = '<li><a href="#none">'+i+'</a></li>';
		$(child).appendTo($('.slide_btn'));
	}
	
	$('.slide_btn > li > a').first().addClass('active');	
	$('.slide_btn > li > a').on('click' , slide_stop); 
	
	//자동 슬라이드 함수
	function autoplay(){
		
		if(current == slide_length-1){
		current = 0;
	}else{
		current++;
	}
		$('.slide_ul>li').stop().fadeOut(1000);
		$('.slide_ul>li').eq(current).stop().fadeIn(1000);
		$('.slide_btn > li > a').removeClass('active');	
		$('.slide_btn > li > a').eq(current).addClass('active');	
	}
	setInterval(autoplay,3000);//반복

	//버튼 클릭시 호출되는 함수
	function slide_stop(){
		var fade_idx = $(this).parent().index(); 
		current = $(this).parent().index();//클릭한 버튼의 Index 를 받아서 그 다음 이미지부터 슬라이드 재생.
		if($('.slide_ul > li:animated').length >= 1) return false; //버튼 반복 클릭시 딜레이 방지
		$('.slide_ul > li').fadeOut(400);
		$('.slide_ul > li').eq(fade_idx).fadeIn(400);
		$('.slide_btn > li > a').removeClass('active');	
		$(this).addClass('active');
		
	}
	
});

$(window).resize(function(e) {
	var height1 = $(".main_con").height() -294;
	$(".left_menu").css({"height" :height1});
	
	var height2 = height1 * 0.95;
	$(".scrollcontent1-bar").css({"height" :height2});
	
	var height3 = $(".left_problem").height()-20;
	$(".scrollcontent3-bar").css({"height" :height3});
	
	var height3 = $(".sub_box1").height() + 58;
	$(".quick").css({"height" : height3});
});


$(window).scroll(function(e) {
	
});






