class Api::V1::TalkController < ApplicationController

  def speak
    result = { response: 'こんにちわー' }
    render_response result
  end

  private
    def statement_params
      params.require(:statement).permit(
        :conversation_id,
        :speaker_id,
        :content
      )
    end
end
