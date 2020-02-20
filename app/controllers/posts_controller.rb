class PostsController < ApplicationController
  before_action :set_item, only: :done
  before_action :authenticate_user!, except:[:show, :index] 

  def index
    @parents = Category.all.order("id ASC").limit(13)
    @items = Item.includes(:images).order("created_at desc").limit(3)

   
  end
  def logout
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
  end


  def done
    @item.updete( buyer_id: current_user.id)
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
  


end
