class ItemsController < ApplicationController

  before_action :set_item, except: [:index, :new, :create]
  
  def index
    @items = Item.all.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '商品を出品しました'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end


  private

  def item_params
    params.require(:item).permit(:name, :price, :status, :delivery_charge, :address, :date, :detail, images_attributes: (:url ))
  end

 def set_item
    @item = Item.find(params[:id])
  end

end

