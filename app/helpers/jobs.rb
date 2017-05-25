class Jobs
  def initialize(session)
    if !session[:paniers]
      session[:paniers] = []
    end
  end
end