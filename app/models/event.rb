class Event < ActiveRecord::Base
	def is_free?
		price.zero? || price.nil?
	end
end
