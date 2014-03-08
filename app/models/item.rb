class Item < ActiveRecord::Base

  LIST_NAMES = ['The Bedfathers','Bedzalcoatl']

  def list_name
    LIST_NAMES[list]
  end

end
