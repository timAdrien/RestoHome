class Jobs
  def initialize(session)
    if !session[:paniers]
      session[:paniers] = []
    end
    if !session[:user_id]
      session[:user_id] = false
    end
  end
end