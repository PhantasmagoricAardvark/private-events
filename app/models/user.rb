class User < ApplicationRecord
	has_many :events
	
	has_many :event_users
	has_many :attended_events, through: :event_users, source: :event
	validates :name, presence: true

	def upcoming_events
		events = self.attended_events.where("date > ?", Time.now)
	end

	def previous_events
		events = self.attended_events.where("date < ?", Time.now)
	end

end
