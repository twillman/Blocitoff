class ItemsController < ApplicationController
  def create
    @item = Item.create(params[:item].permit!)
    redirect_to user_path(current_user)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    respond_to do |format|
      format.html
      format.js
    end
  end
end
