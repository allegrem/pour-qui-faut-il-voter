class HomeController < ApplicationController

  def index
    @items = Item.all
    @best_list = Item.best_list
  end

end
