class SapphiresController < ApplicationController
  def new
    @sapphire = Sapphire.new
    @whale = Whale.find(params[:id])
    @id = params[:id]
  end

  def create
    @whale = Whale.find(params[:sapphire][:id])
    @sapphire = @whale.sapphires.create(sapphire_params)

    redirect_to whale_path(@whale)
  end

  def show
    @sapphire = Sapphire.find(params[:id])
    @whale = Whale.find(params[:whale])
  end

  def destroy
    @sapphire = Sapphire.find(params[:id])
    @whale = Whale.find(params[:whale])
    @sapphire.destroy
 
    redirect_to whale_path(@whale)
  end

  private
    def sapphire_params
      params.require(:sapphire).permit(:name, :whale)
    end
end
