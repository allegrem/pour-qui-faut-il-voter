class Log < ActiveRecord::Base

  has_one :admin
  has_one :item

  validates :content, presence: true
  validates :admin, presence: true
  
end
