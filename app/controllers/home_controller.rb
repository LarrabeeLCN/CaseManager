class HomeController < ApplicationController
  def index
  	@cases = Case.all
  	@protocols = Protocol.all

  end
end
