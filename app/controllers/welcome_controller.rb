class WelcomeController < ApplicationController
  def index
    @bandnames = Bandname.all
  end
end
