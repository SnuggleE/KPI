class IndicatorsController < ApplicationController
  unloadable
  def index
    @indicators=Indicator.all
  end

end
