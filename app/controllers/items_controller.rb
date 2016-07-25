class ItemsController < ApplicationController
  def create
    @item = Item.create(params[:item].permit!)
    redirect_to user_path(current_user)
  end
end
