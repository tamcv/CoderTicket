require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'event is not publish, should not upcoming' do
    a = FactoryGirl.create(:event, publish: false)
    expect(a.upcoming?).to be false
  end
  
  it 'event is passed, should not upcoming' do
    a = FactoryGirl.create(:event, starts_at: "2015-03-04")
    expect(a.upcoming?).to be false
  end
  
  it 'event is valid, should be upcoming' do
    a = FactoryGirl.create(:event, publish: true, starts_at: "2019-03-04")
    expect(a.upcoming?).to be true
  end

  it 'check_publish is false' do
    a = FactoryGirl.create(:event, publish: false)
    expect(a.check_number_ticket_types?).to be false
  end

  it 'check_number_ticket_types is true' do
    a = FactoryGirl.create(:event, publish: false)
    b = FactoryGirl.create(:ticket_type, event_id: a.id )
    expect(a.check_number_ticket_types?).to be true
  end

  it 'publish_event method' do
    a = FactoryGirl.create(:event, publish: false)
    b = FactoryGirl.create(:ticket_type, event_id: a.id )
    a.publish_event
    expect(a.publish).to eq(true)
  end

end
