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
    expect(a.check_publish?).to be false
  end

  it 'check_publish is true' do
    a = FactoryGirl.create(:event, publish: true)
    expect(a.check_publish?).to be true
  end

  it 'publish_event method' do
    a = FactoryGirl.create(:event, publish: false)
    a.publish_event
    expect(a.check_publish?).to eq(true)
  end

end
