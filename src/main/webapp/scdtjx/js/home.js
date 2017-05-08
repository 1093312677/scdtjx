// 地址显示更多
$(function(){
	$(".address-more").on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		var value1 = $(".pro-address").height();
		console.log(value1);
		$(".addressAll").animate({
			height: value1 + 'px'},
			200, function() {
			/* stuff to do after animation is complete */
		});
		// $(".pro-address").toggleClass('addressAll');
	});
})

// 地址选择
$(function(){
	$(".pro-address>li>a").each(function(index, el) {
		$(this).click(function(event) {
			/* Act on the event */
			$(".pro-address>li>a").removeClass('active');
			$(this).addClass('active');
		});
	});
})

$(function(){
	
})