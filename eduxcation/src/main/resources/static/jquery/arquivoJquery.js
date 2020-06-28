$(document).ready(function(){
	$('.dropdown-trigger').dropdown({
		coverTrigger: false
	});
	$('.carousel.carousel-slider').carousel({
		fullWidth: true,
		indicators: true,
	  });
	  setInterval(function(){
		  $('.carousel').carousel('next');
	  }, 3000);
	  $('.sidenav').sidenav();
  });

  $(document).ready(function(){

	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});

	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	}); 
});
$(document).ready(function(){
    $('.scrollspy').scrollSpy({
		scrollOffset: 0
	});
  });


  