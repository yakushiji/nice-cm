class CmsController < ApplicationController
  def index
    @cm = Cm.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cms }
    end
  end

  def show
    @cm = Cm.find(params[:id])
  end

  def new
    @cm = Cm.new
  end

  def create
    @cm = Cm.new(params[:cm])
    if @cm.save
      redirect_to @cm 
    else
      render 'new'
    end
  end
end
