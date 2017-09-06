class DropChatRoomsTable < ActiveRecord::Migration[5.0]
  def up
  	drop_table :chat_rooms, :topic
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end 
end
