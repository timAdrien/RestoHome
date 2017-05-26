class AccountController < ApplicationController
  def index
    Jobs.new(session)
    if session[:user_id] == false
      redirect_to "/"
    else
      @user = User.find(session[:user_id])
    end
  end

  def creation
  end

  def create
    User.create(username: params["users"]["email"], mdp: params["users"]["password"])
    redirect_to "/connection"
  end

  def connect
    @test = User.where(username: params["users"]["email"], mdp: params["users"]["password"])
    if @test.count > 0
      session[:user_id] = @test[0][:id]
      redirect_to "/account"
    else
      redirect_to "/connection"
    end
  end

  def connection
  end

  def disconnect
    Jobs.new(session)
    session[:user_id] = false
    redirect_to "/"
  end
end
