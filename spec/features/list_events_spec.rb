require "rails_helper"
require "spec_helper"

describe "Viewing the list of events" do 
	it "show all events" do
		#name,description,location,price,start at
		event1 = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
		event2 = Event.create(name: "Hackathon",
							  location: "Austin",
							  price: 15.00,
							  description: "Hunker down at the hackhaton",
							  starts_at: 15.days.from_now)
		event3 = Event.create(name: "Kata Camp",
							  location: "Dallas",
							  price: 75.00,
							  description: "Practice your kata camp style",
							  starts_at: 30.days.from_now)

		visit events_path
		expect(page).to have_text("3 Events")
		expect(page).to have_text("BugSmash")
		expect(page).to have_text("Hackathon")
		expect(page).to have_text("Kata Camp")

	end
end