class ResponseIdiom < ActiveRecord::Base
  has_many :related_idioms
  has_many :request_idioms, through: :related_idioms
end
