class BandnamesController < ApplicationController

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
  @bandname = Bandname.find(params[:id])
end

def edit
  @bandname = Bandname.find(params[:id])
end

def update
  @bandname = Bandname.find(params[:id])
  if @bandname.update(bandname_params)
    redirect_to @bandname
  else
    render :edit
  end
end

def index
  @bandnames = Bandname.all
end

private

def bandname_params
  params.require(:bandname).permit(:name)
end

end
