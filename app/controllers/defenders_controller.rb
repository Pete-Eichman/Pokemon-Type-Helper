class DefendersController < ApplicationController
  def index
    @defenders = Defender.all
  end
  def show
    @defender = Defender.find(params[:id])
  end
end
