class MarmotsController < ApplicationController

  def index
    @marmots = Marmot.all
  end

  def new
    @marmot = Marmot.new
  end

  def create
    @marmot = Marmot.new(marmot_params)

    if @marmot.save
      redirect_to products_path, :notice => t("flash.questions.create.notice")
    else
      render :new
    end
  end

  private
  def marmot_params
    params.require(:marmot).permit(:name)
  end
end
