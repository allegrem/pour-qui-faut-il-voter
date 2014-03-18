class HomeController < ApplicationController

  skip_filter :authenticate_admin!

  def index
    @items = Item.where('list >= 0')
    @best_list = Item.best_list
  end

end
