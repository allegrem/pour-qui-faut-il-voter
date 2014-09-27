class Chat < ActiveRecord::Base

  validates :message, presence: true, length: {in: 1..140}
  validates :pseudo, presence: true, length: {in: 2..20}

end
