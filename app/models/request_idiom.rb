class RequestIdiom < ActiveRecord::Base
  has_many :related_idioms
  has_many :response_idioms, through: :related_idioms

  scope :word_only, -> { select(:word) }
  scope :noun, -> { where(morph_type: MorphemeTypes::TYPE_NOUN) }
  scope :verb, -> { where(morph_type: MorphemeTypes::TYPE_VERB) }
  scope :adjacent, -> { where(morph_type: MorphemeTypes::TYPE_ADJACENT) }

  def self.my_response
    "#{self.noun.word_only.pluck(:word).sample}を#{self.verb.word_only.pluck(:word).sample}のって#{self.adjacent.word_only.pluck(:word).sample}よね〜"
  end

  def stock
    self.increment(:occurences)
    self.save
  end
end
