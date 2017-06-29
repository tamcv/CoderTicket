require 'rails_helper'

RSpec.describe "events/index.html.erb", type: :view do
  it "displays all upcoming events" do
    assign(:events, [
      Event.create!(name: "event1", starts_at: Faker::Date.forward(23), ends_at: Faker::Date.forward(25), publish: true),
      Event.create!(name: "event2", starts_at: Faker::Date.forward(23), ends_at: Faker::Date.forward(25), publish: true)
    ])
    render
    expect(rendered).to match /event1/
    expect(rendered).to match /event2/
  end

end