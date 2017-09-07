class ChatroomsChannel < ApplicationChannel::Cable
	def subscribed
		stream_from "chatrooms_#{params['chatroom_id']}_channel"	
	end

	def unsubscribed
		
	end

	def send_message(data)
		 current_user.messages.create!(content: data['message'], chatroom_id: data['chatroom_id'])
	end
end
