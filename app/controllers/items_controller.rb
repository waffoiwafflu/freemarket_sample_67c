class ItemsController < ApplicationController
  
  
  def index
    @items = Item.find(params[:item_id])
  end
  
  def show
    @item = Item.find(params[:item_id])
  end

  def new
    @item = Item.new
  end

  def create
  end

  def edit
    redirect_to 出品ページ if current_user.id != @item.saler_id
  end

  def destory
    if @item.saler_id == current_user.id && @item.destory
      redirect_to root_path
    end
  end
end