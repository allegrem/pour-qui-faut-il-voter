class HomeController < ApplicationController

  skip_filter :authenticate

  def index
    @items = Item.all
    @best_list = Item.best_list
  end

end
