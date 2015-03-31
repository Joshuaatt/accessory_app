class SubaruModelsController < ApplicationController
  def index
    @subaru_models = SubaruModel.all
  end
end
