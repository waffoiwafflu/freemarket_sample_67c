class ItemsController < ApplicationController
  
  
  def index
  
  end
  
  def show
    @item = Item.new
    render "new"
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
    @item.destory if @item.saler_id == current_user.id
    redirect_to root_path
  end
end