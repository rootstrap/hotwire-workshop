# frozen_string_literal: true

class ChatRoomsController < ApplicationController
  helper_method :chat_room

  def index
    @chat_rooms = ChatRoom.all
  end

  def edit; end

  private

  def chat_room
    @chat_room ||= ChatRoom.find(params[:id])
  end
end
