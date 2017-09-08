class MessagesChannel < ApplicationCable::Channel
	def subscribed
		stream_from 'messages'
	end

	def receive(payload)
    message = Message.create(chatroom_id: payload["chatroom_id"], content: payload["message"])
    ActionCable.server.broadcast('messages', {message: message.content, chatroom_id: message.chatroom_id})
	 end
end