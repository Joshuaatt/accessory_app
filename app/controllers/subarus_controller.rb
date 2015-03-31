class SubarusController < ApplicationController
  def index
    @subarus = Subaru.all
  end
end
