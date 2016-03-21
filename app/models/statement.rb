class Statement < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :speaker
end
