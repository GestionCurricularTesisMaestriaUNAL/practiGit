class Message < ApplicationRecord
	validates :title, :description, presence: true
	validates :description, length: {minimum: 10}
	validates :title, uniqueness: true
end
