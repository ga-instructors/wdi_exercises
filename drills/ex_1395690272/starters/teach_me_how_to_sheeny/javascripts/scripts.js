$(function(){

	// Give me Sheen
	var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
					.addClass('sheen')
					.draggable();

	$('#sheen-bin').append(sheen);



	// Events for Sheen Effect bins !!!!!

	$('#fade-bin').droppable({
		drop: function(e, dropped){
			$(dropped.draggable).fadeOut('slow')
		}
	});


	$('#shrink-bin').droppable({
		drop: function(e, dropped){
			$(dropped.draggable).animate({
				width: '-=1em', 
				height: '-=1em'
				}, 'slow')
		}
	});


	$('#enlarge-bin').droppable({
		drop: function(e, dropped){
			$(dropped.draggable).animate({
				width: '+=1em', 
				height: '+=1em'
				}, 'slow')
		}
	});


	$('#explode-bin').droppable({
		drop: function(e, dropped){
			$(dropped.draggable).toggle('explode')
		}
	});
	
	$('#shake-bin').droppable({
		drop: function(e, dropped){
			$(dropped.draggable).toggle('shake')
		}
	});

$('#mutate-bin').droppable({
	drop: function(e, dropped){
		$(dropped.draggable[0]).attr('src', 'http://placekitten.com/100/100')
		.toggle('shake');
	}
});

$('#clone-bin').droppable({
	drop: function(e, dropped){
		$(dropped.draggable).clone().draggable().appendTo('#sheen-bin');
	}
})

	
})