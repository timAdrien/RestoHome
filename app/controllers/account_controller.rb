class AccountController < ApplicationController
    def index
      Jobs.new(session)
      if session[:user_id] == false
        redirect_to "/"
      else
        @user = User.find(session[:user_id])
      end
    end
    def disconnect
      Jobs.new(session)
      session[:user_id] = false
      redirect_to "/"
    end
end
