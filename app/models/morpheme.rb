class Morpheme
  include MorphemeTypes

  def initialize
    @mecabnatto = Natto::MeCab.new
  end

  def classify text
    result = []
    @mecabnatto.parse(text) do |n|
      morph_name = n.feature.split(',').first
      result << { type: TYPE_NAME_TO_CODE[morph_name], word: n.surface } if TYPE_NAME_TO_CODE.key?(morph_name)
    end
    result
  end
end
