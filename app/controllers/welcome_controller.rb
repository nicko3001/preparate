class WelcomeController < ApplicationController
  def index
  	@curcos = Curco.all
  end
end
