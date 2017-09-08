class MessagesChannel < ApplicationCable::Channel
	def subscribed
    stream_from "room-#{params['room']}:messages"
	end

	def receive(payload)
		Message.create(user: current_user, chatroom_id: params["room"], content: payload["message"])
	    ActionCable.server.broadcast('messages', {message: message.content, chatroom_id: message.chatroom_id})
	end
end