class SuppliesController < ApplicationController

  def index
    @title = "All Supplies:"
    @supplies = Supply.all
  end

  def index
    if params[:camper_id]
      @camper = Camper.find(params[:camper_id])
      @supplies = @camper.supplies
      @title = "Supplies Brought by #{@camper.name}"
    else
      @title = "All Supplies:"
      @supplies = Supply.all
    end
  end
end
