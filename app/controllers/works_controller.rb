class WorksController < ApplicationController
  def index
  	if params[:delete_item].present?
		id_item = params[:delete_item]
		@p = Product.where("id == id_item")
		@p.destroy
	else
  		@i = Item.all
  	end
  end
end
