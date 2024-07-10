class ApiController < ApplicationController
    protect_from_forgery with: :null_session
  
    def hello
      if params[:message] == "Hello"
        render json: { response: "Hello World!" }
      else
        render json: { response: "Invalid message" }, status: :bad_request
      end
    end
  end