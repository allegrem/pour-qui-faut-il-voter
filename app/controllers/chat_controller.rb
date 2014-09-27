class ChatController < ApplicationController

  skip_filter :authenticate_admin!, only: [:create]

  def index
    @chats = Chat.all
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to wall_url
    else
      redirect_to wall_url, notice: 'chat was successfully created.'
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    if @chat.destroy
      Log.create admin: current_admin, content: "Chat destroyed. Old params were: pseudo=#{@chat.pseudo} ; message=#{@chat.message}."
      format.html { redirect_to items_url }
    end
  end


  private

  def chat_params
    params.require(:chat).permit(:pseudo, :message)
  end

end
