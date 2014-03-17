class Log < ActiveRecord::Base

  has_one :admin
  has_one :item

  default_scope order('created_at DESC')

  validates :content, presence: true
  validates :admin, presence: true

end
