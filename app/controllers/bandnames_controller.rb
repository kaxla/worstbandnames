class BandnamesController < ApplicationController
before_action :set_bandname, only: [:show, :edit, :update, :destroy, :upvote]
load_and_authorize_resource

  def new
    @bandname = Bandname.new
  end

  def create
    @bandname = Bandname.new(bandname_params)
    if @bandname.save
      flash[:notice] = "Bandname Created"
      redirect_to @bandname
    else
      flash.now[:error] = "bandname could not be saved"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @bandname.update(bandname_params)
      redirect_to @bandname
    else
      render :edit
    end
  end

  def destroy
    @bandname.destroy
    redirect_to bandnames_path
  end

  def index
  end

  def upvote
    @bandname.votes.create
    redirect_to(bandnames_path)
  end

  private

  def bandname_params
    params.require(:bandname).permit(:name)
  end

  def set_bandname
    @bandname = Bandname.find(params[:id])
  end
end
