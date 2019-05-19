class Event < ApplicationRecord
	belongs_to :creator, foreign_key: "user_id", class_name: "User"

	validates :name, presence: true
end
