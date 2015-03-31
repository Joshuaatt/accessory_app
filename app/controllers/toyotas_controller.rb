class ToyotasController < ApplicationController
  def index
    @toyota = Toyota.all
  end
end
