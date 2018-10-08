
		$(function(){

			$('.menu').mouseover(function(){
				$('.menu').css('cursor','pointer');
			});
			$('.menu').mouseout(function(){
				$('.menu').css('cursor','default');
			});

			$('#zx_back').mouseover(function(){
				$('#zx_back').css('cursor','pointer');
			});
			$('#zx_back').mouseout(function(){
				$('#zx_back').css('cursor','default');
			});

			$('#index').click(function(){
				location.href='index.html';
			});
			$('#lanmu').click(function(){
				location.href='lanmu.html';
			});
			$('#zixun').click(function(){
				location.href='zixun.html';
			});
			$('#user').click(function(){
				location.href='user.html';
			});

			$('button')[0].onclick=function(){
				$('#zx_add').css('display','block');
			}
			$('button')[2].onclick=function(){
				$('#zx_add').css('display','none');
			}
			$('#zx_back').click(function(){
				$('#zx_add').css('display','none');
			});

		})
