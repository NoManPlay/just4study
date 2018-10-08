$(function(){

			$('.menu').mouseover(function(){
				$('.menu').css('cursor','pointer');
			});
			$('.menu').mouseout(function(){
				$('.menu').css('cursor','default');
			});

			$('#back').mouseover(function(){
				$('#back').css('cursor','pointer');
			});
			$('#back').mouseout(function(){
				$('#back').css('cursor','default');
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
				$('#lm_add').css('display','block');
			}
			$('button')[2].onclick=function(){
				$('#lm_add').css('display','none');
			}
			$('#back').click(function(){
				$('#lm_add').css('display','none');
			});


			$.get("http://120.78.164.247:8099/manager/category/findAllCategory",function(data){
			var a=data.data;
			console.log(a);	
			for(var i=0;i<a.length;i++){
				var tr;
				var input='<input type="checkbox" value="">';
				input.value=a[i].id;
				console.log(input.value);
    			tr='<td>'+input+'</td>'+'<td>'+a[i].name+'</td>'+'<td>'+a[i].parent+
    			'</td>'+'<td>'+a[i].coment+'</td>'+'<td>'+a[i].no+'</td>'

    $(".table").append('<tr>'+tr+'</tr>')	
			}		
		});
		})
