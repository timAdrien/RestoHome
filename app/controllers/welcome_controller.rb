class WelcomeController < ApplicationController
  def index
    Jobs.new(session)
  end
end
