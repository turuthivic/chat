class ChatRoom < ApplicationRecord
	has_many :messages, dependent: :destroy
	has_many :users, through: :messages

	validates :topic, uniqueness: true, case_sensitive: false
end
