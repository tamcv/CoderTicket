class TicketType < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :tickets

  def ticket_count
    if !tickets.map(&:count).blank?
      max_quantity - tickets.map(&:count).reduce(:+)
    else
      max_quantity
    end
  end
end