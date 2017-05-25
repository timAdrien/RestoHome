class Jobs
  def initialize(session)
    if !session[:paniers]
      session[:paniers] = []
    end
    if !session[:connected]
      session[:connected] = false
    end
  end
end