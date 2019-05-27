class Event < ApplicationRecord
	belongs_to :creator, foreign_key: "user_id", class_name: "User"
	
	has_many :event_users
	has_many :attendees, through: :event_users, source: :user 
	
	validates :description, presence: true
	validates :date, presence: true

	def self.past_events
		self.where("date < ?", Time.now)
	end

	def self.upcoming_events

	end

end