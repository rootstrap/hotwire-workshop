class CreateChatRoomUser < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_room_users do |t|
      t.boolean :online, null: false
      t.references :chat_room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :chat_room_users, %i[chat_room_id user_id], unique: true
  end
end
