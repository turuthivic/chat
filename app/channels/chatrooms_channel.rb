class ChatroomChannel < ApplicationChannel::Cable
	def subscribed
		stream_from "chatrooms_#{params['chatroom_id']}_channel"	
	end

	def unsubscribed
		
	end

	def send_message(data)
		 current_user.messages.create!(content: data['message'], chat_room_id: data['chat_room_id'])
	end
end
