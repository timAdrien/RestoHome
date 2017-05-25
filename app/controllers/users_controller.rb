class UsersController < ApplicationController
    def index
      Jobs.new(session)
    end
    def create
      @test = User.where(username: params["users"]["email"],mdp:params["users"]["password"])
      if @test.count > 0
        session[:user_id] = @test[0][:id]
        redirect_to "/account"
      end
    end
end
