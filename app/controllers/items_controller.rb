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
end
