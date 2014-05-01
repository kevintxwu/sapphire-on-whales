class WhalesController < ApplicationController
  def new
    @whale = Whale.new
  end

  def create
    @whale = Whale.new(whale_params)
 
    if @whale.save
      redirect_to @whale
    else
      render 'new'
    end
  end

  def show
    @whale = Whale.find(params[:id])
  end

  def index
    @whales = Whale.all
  end

  def edit
    @whale = Whale.find(params[:id])
  end

  def update
    @whale = Whale.find(params[:id])
    
    if @whale.update(whale_params)
      redirect_to @whale
    else
      render 'edit'
    end
  end

  def destroy
    @whale = Whale.find(params[:id])
    @whale.destroy
 
    redirect_to whales_path
  end

  private
    def whale_params
      params.require(:whale).permit(:name, :color, :description)
    end
end
