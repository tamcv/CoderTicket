require 'rails_helper'

RSpec.describe 'ticket_count_method', type: :model do
  before do
    @a = FactoryGirl.create(:ticket_type, name: 'VIP', max_quantity: 100)
    @b = FactoryGirl.create(:ticket_type, name: 'NM', max_quantity: 300)
  end

  it 'tickets counting is not empty' do
    FactoryGirl.create(:ticket, count: 20, ticket_type_id: @a.id)
    FactoryGirl.create(:ticket, count: 30, ticket_type_id: @b.id)
    expect(@a.ticket_count).to eq(80)
    expect(@b.ticket_count).to eq(270)
  end

  it 'tickets counting is not empty' do
    expect(@a.ticket_count).to eq(100)
  end

end
