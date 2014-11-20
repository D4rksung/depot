module VisitCounter
  extend ActiveSupport::Concern
  private
  def set_counter
    if session[:counter].nil?
      reset_counter
    end
    @counter=session[:counter]+1
    session[:counter]=@counter
  end

  def reset_counter
    session[:counter]=0
  end
end