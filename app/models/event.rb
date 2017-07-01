class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category
  belongs_to :user
  has_many :ticket_types, dependent: :destroy

  #validates_presence_of :extended_html_description, :venue, :category, :starts_at
  #validates_uniqueness_of :name, uniqueness: {scope: [:venue, :starts_at]}

  def self.upcoming
    where("starts_at > (?) and publish = true",Time.now)
  end
  
  def upcoming?
    starts_at > Time.now && self.publish
  end

  def check_number_ticket_types?
    self.ticket_types.length > 0
  end

  def publish_event
    self.publish= true
    save!
  end

  def find_relation
    Event.where({category_id: self.category_id}).joins(:venue).where("venues.region_id = #{self.venue.region_id}")
  end

end
