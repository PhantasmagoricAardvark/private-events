class Event < ApplicationRecord
	belongs_to :creator, foreign_key: "user_id", class_name: "User"

	validates :description, presence: true
	validates :date, presence: true
end
