class ToyotaModelsController < ApplicationController
  def index
    @toyota_models = ToyotaModel.all
  end
end
