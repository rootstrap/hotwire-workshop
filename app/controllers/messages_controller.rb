# frozen_string_literal: true

class MessagesController < ApplicationController
  helper_method :chat_room

  def index
    @messages = chat_room.messages
  end

  def create
    @message = chat_room.messages.new(message_params.merge(user: current_user))

    respond_to do |format|
      if @message.save
        format.turbo_stream { head :no_content }
        format.html { redirect_to chat_room }
      else
        head :bad_request
      end
    end
  end

  private

  def chat_room
    @chat_room ||= ChatRoom.find(params[:chat_room_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
