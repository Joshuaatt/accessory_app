class IndexController < ApplicationController
  def index
    @toyotas = Toyota.all
    @subarus = Subaru.all
  end
end
