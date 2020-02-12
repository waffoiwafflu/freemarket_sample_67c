class PostsController < ApplicationController
  before_action :set_item, only: [:done]
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @items = Item.all.includes(:images).order("created_at desc").limit(3)
   
  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
  end

  def done
    @item_buyer = Item.find(params[id])
    @item_buyer.updete( buyer_id: current_user.id)
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end


end
