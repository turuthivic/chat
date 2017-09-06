class Chatroom < ApplicationRecord
	has_many :messages, dependent: :destroy
	has_many :users, through: :messages

	validates :topic, uniqueness: true, presence: true, case_sensitive: false
end
