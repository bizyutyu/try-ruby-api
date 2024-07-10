class ApiController < ApplicationController
    protect_from_forgery with: :null_session

    # 挨拶するエンドポイント
    def hello
      if params[:message] == "Hello"
        render json: { response: "Hello World!" }
      else
        render json: { response: "Invalid message" }, status: :bad_request
      end
    end

    # RubyOnRails
    def isRubyOnRails
        if params[:message] == "RubyOnRails"
          render plain: "RubyOnRails!!!"
        else
          render plain: "NotRubyOnRails..." , status: :bad_request
        end
    end

    # 現在時刻を答えるエンドポイント
    def currentTime
        nowtime = Time.now
        render plain: nowtime.to_s
    end
end