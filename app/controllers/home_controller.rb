class HomeController < ApplicationController

  skip_filter :authenticate_admin!

  def index
    @items = Item.where('list >= 0')
    @best_list = Item.best_list
  end

  def challenges
    @items = Item.where('list = -1')
  end

  def wall
    @chats = Chat.all.limit(50).order('created_at desc')
    @chat = Chat.new
  end

end
