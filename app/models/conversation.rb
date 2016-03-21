class Conversation < ActiveRecord::Base
  belongs_to :speaker
  has_many :statements
end
