class BandnamesController < ApplicationController

  def new
  end

  def create
    @bandname = Bandame.new
  end

end
