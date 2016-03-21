class ApplicationController < ActionController::API
  
  def render_response(data)
    render :json => {'code' => 200, 'result' => data }
  end

  def error_responce(code, msg)
    render :json => {'code' => code, 'msg' => msg }
  end
end
