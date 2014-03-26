
$(function(){ 

	$(".circle").hover(
		function(){
			$(this).fadeOut("slow");
				var new_color = function getRandomColor() {
        var letters = '0123456789ABCDEF'.split('');
        var color = '#';
        for (var i = 0; i < 6; i++ ) {
            color += letters[Math.round(Math.random() * 15)];
        }
        	return color;
        };
      $(this).css("background-color", new_color);
		},
		function() {
		$(this).fadeIn("fast");
		});



});
