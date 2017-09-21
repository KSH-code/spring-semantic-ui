/**
 * 
 */
const slide_time = 250

const host = 'http://192.168.0.41:8080'

var menu = false
$(function(){window.addEventListener("resize", ()=>{resizeWindow()})
resizeWindow()

function resizeWindow() {
	if (this.innerWidth <= 766) {
		$('.mobile_menu').css({
			position: 'fixed',
			'z-index':10
		})
		$('.mobile').show()
		if(!menu){
			$('#skip>header>div').hide()
			$('.mobile_menu').show()
		}else{
			
		}
	} else {
		$('.mobile_menu').css({
			position: 'relative',
			'z-index':0
		})
		$('.mobile_menu').hide()
		$('.mobile').hide()
		$('#skip>header>div').show()
	}
}})

function mobileMenu(obj1, obj2){
	if(menu){
		setTimeout(() => {
			$(obj1).show()
		}, slide_time)
		slideUp(obj2)
		menu = false
	}else{
		$(obj1).hide()
		slideDown(obj2)
		$('html, body').stop().animate({scrollTop:0}, slide_time, 'swing');
		menu = true
	}
}

function slideDown(obj){
	$(obj).slideDown(slide_time);
}

function slideUp(obj){
	$(obj).slideUp(slide_time);
}
/**
 * 폼 데이터가 맞을시
 */
const formSuccess = function(form){
	ajax(form)
}

