require 'rails_helper'

describe 'Navigation Between List and Show Page' do 
	it 'Navigate from event show page to events list page' do 
		event = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
		visit event_path event
		click_link "All Events"
		expect(current_path).to eq(events_path)

	end

	it 'Navigate from events list page to event show' do
		event = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
		visit events_path
		click_link "#{event.name}"
		expect(current_path).to eq(event_path event)
	end
end