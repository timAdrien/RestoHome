class UsersController < ApplicationController
    def index

    end
    def create
      email = "melvinfelixpons@hotmail.fr"
      password = "melvin"
      if params["users"]["email"] == email && password == params["users"]["password"]
        @connected = true
      else
        @connected = false
      end
    end
end
