class TicketType < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :tickets
end
