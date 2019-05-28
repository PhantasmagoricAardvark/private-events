class Event < ApplicationRecord
	belongs_to :creator, foreign_key: "user_id", class_name: "User"
	
	has_many :event_users
	has_many :attendees, through: :event_users, source: :user 
	
	validates :description, presence: true
	validates :date, presence: true

	scope :upcoming_events, -> { where("date > ?",Time.now) }
	scope :past_events, -> { where("date < ?", Time.now) }

	scope :ascending, -> { order(date: :asc)}

end