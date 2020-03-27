class HomeController < ApplicationController
  def mypage
  end

  def list
    @events = Event.all
    @events.order(:score)
    @events.reverse
  end

end
