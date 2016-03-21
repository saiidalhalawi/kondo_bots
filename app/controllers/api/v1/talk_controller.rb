class Api::V1::TalkController < ApplicationController

  def speak
    error_responce(401, 'must contains `content` param') and return unless params.key?(:content)

    morpheme = Morpheme.new
    morpheme.classify(params[:content]).each do |item|
      req_idiom = RequestIdiom.find_or_initialize_by(morph_type: item[:type], word: item[:word])
      req_idiom.stock
    end
    res = RequestIdiom.my_response
    result = { response: res }
    render_response result
  end
end
