# frozen_string_literal: true

class ChatRoomsController < ApplicationController
  helper_method :chat_room

  def index
    sleep 1
    @chat_rooms = search_applied? ? filtered_chat_rooms : ChatRoom.order(:name)
  end

  def show; end

  def edit; end

  def update
    chat_room.update!(chat_room_params)

    render partial: 'chat_room', chat_room: chat_room
  end

  private

  def chat_room
    @chat_room ||= ChatRoom.find(params[:id])
  end

  def chat_room_params
    params.require(:chat_room).permit(:name)
  end

  def filtered_chat_rooms
    ChatRoom.where('name like ?', "%#{params[:search]}%").order(:name)
  end

  def search_applied?
    params[:search].present?
  end
end
