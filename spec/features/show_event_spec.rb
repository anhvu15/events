require 'rails_helper'
require 'spec_helper'
	describe "Show An Event" do
		it "Visit The Event And Have Event Infor" do
			event1 = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
			visit event_path(event1)
			expect(page).to have_text("BugSmash")
		end

		it "Show price if the price is not 0" do
			event1 = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
			visit event_path(event1)
			expect(page).to have_text("$10.00")
		end
		it "Show free if the price is 0 or nil" do
			event1 = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: nil,
							  description: "A fun evening of bug smashing",
							  starts_at: 10.days.from_now)
			visit event_path(event1)
			expect(page).to have_text("Free")
		end
	end