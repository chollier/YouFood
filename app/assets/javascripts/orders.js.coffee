$(".add-food").live('click', -> 
	val = parseInt($(this).next().next().val())
	$(this).next().next().val(val+1) 
	price = parseFloat $(this).next().next().next().html()
	total_price = if not isNaN(parseFloat($('#total-price').html())) then parseFloat($('#total-price').html()) else 0
	$('#total-price').html price+total_price
	
	food_id = $(this).next().next().data("food") + '-' + $(this).next().next().data("id")
	if $("form ul ."+food_id).length == 0
		clone = $("."+food_id).clone()
		clone.find('.thumbnail .caption p:first').remove()
		clone.appendTo('form ul')
		# console.log(food_id+" not")
	
	$(this).next().next().change()
)


$(".rem-food").live('click', -> 
	val = parseInt($(this).next().val())
	if val >= 1
		$(this).next().val(val-1)
		price = parseFloat $(this).next().next().html()
		total_price = if not isNaN(parseFloat($('#total-price').html())) then parseFloat($('#total-price').html()) else 0
		
		console.log price
		console.log total_price
		
		$('#total-price').html total_price-price
	$(this).next().change()
)	
	
$(".food-qty").live('change', -> 
	food = $(this).data('food')
	id = $(this).data('id')
	val = $(this).val()
	$('.food-qty[data-food="'+food+'"][data-id="'+id+'"]').each ->
		$(this).val val
	if val == "0"
		$('form ul .'+food+'-'+id).remove()
)


# PrivatePub.subscribe "/orders/new", (data, channel) ->
  # $('#orders-list').append(data)