class Item < ActiveRecord::Base

  LIST_NAMES = ['The Bedfathers','Bedzalcoatl']

  validates :title, presence: true
  validates :list, presence: true, inclusion: {in: 0.upto(LIST_NAMES.length-1)}
  validates :points, presence: true, numericality: {only_integer: true}


  def list_name
    LIST_NAMES[list]
  end

end
