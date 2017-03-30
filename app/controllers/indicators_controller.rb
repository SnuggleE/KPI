class IndicatorsController < ApplicationController
  unloadable
  def index
    @indicators=Indicator.all
  end
  def show
    @indicator=Indicator.find(params[:id])
  end

  def new
    @indicator=Indicator.new
  end
  def edit
    @indicator=Indicator.find(params[:id])
  end
  def create
    @indicator=Indicator.new(indicator_params)
    @indicator.save
    redirect_to @indicator
  end
  def update
    @indicator=Indicator.find(params[:id])
    if @indicator.update(indicator_params)
      redirect_to @indicator
    else
      render 'edit'
    end
  end
  def destroy
    @indicator=Indicator.find(params[:id])
    @indicator.destroy

    redirect_to indicators_path
  end
  private
  def indicator_params
    params.require(:indicator).permit(:name, :interpretation, :inputtype, :category,:unit, :marksperperiod, :isobjective)
  end
end
