class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  validates :content, presence: true, length: {minimum: 2, maximum: 140}

  after_create_commit { MessageBroadcastJob.perform_later(self) }
end
