module MorphemeTypes
  extend ActiveSupport::Concern

  TYPE_NOUN = 1
  TYPE_VERB = 2
  TYPE_ADJACENT = 3

  TYPE_NAME_TO_CODE = {
    '名詞' => TYPE_NOUN,
    '動詞' => TYPE_VERB,
    '形容詞' => TYPE_ADJACENT,
  }
end
