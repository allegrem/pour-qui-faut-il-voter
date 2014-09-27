class ChatController < ApplicationController

  def index
    @chats = Chat.all
  end

  def destroy
    @chat = Chat.find(params[:id])
    if @chat.destroy
      Log.create admin: current_admin, content: "Chat destroyed. Old params were: pseudo=#{@chat.pseudo} ; message=#{@chat.message}."
      format.html { redirect_to items_url }
    end
  end

end
