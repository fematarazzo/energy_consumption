class PagesController < ApplicationController
  def home
    @air_conditionings = AirConditioning.all
    @tariffs = Tariff.all
  end
end
