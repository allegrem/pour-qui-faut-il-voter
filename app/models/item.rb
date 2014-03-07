class Item < ActiveRecord::Base

  def list_name
    case list
    when 0
      "The Bedfathers"
    when 1
      "Bedzalcoatl"
    end
  end

end
