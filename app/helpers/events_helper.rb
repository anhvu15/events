module EventsHelper
	def display_price(event)
		return content_tag(:strong,"Free") if event.is_free?
		number_to_currency(event.price)
	end
end
