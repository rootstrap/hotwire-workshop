# == Schema Information
#
# Table name: chat_room_users
#
#  id           :bigint           not null, primary key
#  online       :boolean          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  chat_room_id :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_chat_room_users_on_chat_room_id              (chat_room_id)
#  index_chat_room_users_on_chat_room_id_and_user_id  (chat_room_id,user_id) UNIQUE
#  index_chat_room_users_on_user_id                   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (chat_room_id => chat_rooms.id)
#  fk_rails_...  (user_id => users.id)
#
class ChatRoomUser < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  validates :chat_room_id, uniqueness: { scope: :user_id }
end
