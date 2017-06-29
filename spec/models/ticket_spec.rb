require 'rails_helper'

RSpec.describe Ticket, type: :model do
  before do
    FactoryGirl.create(:ticket_type, max_quantity: 100)
  end

  describe 'not_more_than_quantity' do

    it "a valid ticket" do
      a = Ticket.create(count: 2, ticket_type_id: TicketType.last.id)
      expect(a.not_more_than_quantity).to be true
    end

    it "invalid ticket" do
      a = Ticket.create(count: 200, ticket_type_id: TicketType.last.id)
      expect(a.not_more_than_quantity).to be false
    end

  end
end
