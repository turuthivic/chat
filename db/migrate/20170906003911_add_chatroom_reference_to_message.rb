class AddChatroomReferenceToMessage < ActiveRecord::Migration[5.0]
  def change
  	add_reference :messages, :chatroom
  end
end
