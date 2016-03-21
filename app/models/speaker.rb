class Speaker < ActiveRecord::Base
  has_many :conversations
end
