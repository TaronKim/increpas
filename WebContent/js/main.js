
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


	// �����̵�
	var current=0;
	var slide_length = $('.slide_ul>li').length;//�̹����� ������ ������
	var btn_ul = '<ul class="slide_btn"></ul>';//��ư LIST �ۼ��� UL


	$('.slide_ul>li').hide();//�̹��� �Ⱥ��̰�
	$('.slide_ul>li').first().show();//�̹��� �ϳ��� ���̰�
	
	
	$(btn_ul).prependTo($('.slide'))//slide Ŭ�������� ����
	for (var i = 0 ; i < slide_length; i++){//���׶�� ��ư ���� �̹��� li ���� ��ŭ
		var child = '<li><a href="#none">'+i+'</a></li>';
		$(child).appendTo($('.slide_btn'));
	}
	
	$('.slide_btn > li > a').first().addClass('active');	
	$('.slide_btn > li > a').on('click' , slide_stop); 
	
	//�ڵ� �����̵� �Լ�
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
	setInterval(autoplay,3000);//�ݺ�

	//��ư Ŭ���� ȣ��Ǵ� �Լ�
	function slide_stop(){
		var fade_idx = $(this).parent().index(); 
		current = $(this).parent().index();//Ŭ���� ��ư�� Index �� �޾Ƽ� �� ���� �̹������� �����̵� ���.
		if($('.slide_ul > li:animated').length >= 1) return false; //��ư �ݺ� Ŭ���� ������ ����
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






