class HomeController < ApplicationController
  def index
  end

  def history
  end

  def log
  	@round = Round.new
  end
end
