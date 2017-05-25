class Jobs
  def initialize(session)
    session.delete(:paniers)
    if !session[:paniers]
      session[:paniers] = []
    end
  end
end