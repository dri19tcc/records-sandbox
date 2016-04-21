class HomeController < ApplicationController
  def index
    # @name = "Adriana"
    @name = params[:name] || "Adriana"
  end

  def jack
    @best_dog = "zomg yass"
  end
end
