class ItemsController < ApplicationController
  before_action :defolt_category, only: [:index, :show]
  before_action :set_item, only: [:edit, :show, :update, :destory]
  before_action :set_category_parent_array, only: [:new, :edit]

  def index
    @items = Item.includes(:images).order("created_at DESC")
  end
  
  def show
    @parents = Category.order("id ASC").limit(13)
    @items = Item.includes(:images).order("created_at DESC")
    @saler = User.find(@item.saler_id)
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
      flash[:alert] = "商品を出品しました。"
    else
      flash.now[:alert] = "出品できませんでした。"
      if @item.images.empty?
        @item.images.new
      end
      set_category_parent_array
      render :new
      
    end
  end

  def edit
    redirect_to 出品ページ if current_user.id != @item.saler_id
    # 登録されている商品の孫カテゴリーのレコードを取得
    @selected_grandchild_category = @item.category
    # 孫カテゴリー選択肢用の配列作成
    @category_grandchildren_array = [{id: "---", name: "---"}]
    Category.find("#{@selected_grandchild_category.id}").siblings.each do |grandchild|
      grandchildren_hash = {id: "#{grandchild.id}".to_i, name: "#{grandchild.name}"}
      @category_grandchildren_array << grandchildren_hash
    end
    # 選択されている子カテゴリーのレコードを取得
    @selected_child_category = @selected_grandchild_category.parent
    # 子カテゴリー選択肢用の配列作成
    @category_children_array = [{id: "---", name: "---"}]
    Category.find("#{@selected_child_category.id}").siblings.each do |child|
      children_hash = {id: "#{child.id}", name: "#{child.name}"}
      @category_children_array << children_hash
    end
    # 選択されている親カテゴリーのレコードを取得
    @selected_parent_category = @selected_child_category.parent
    # 親カテゴリー選択肢用の配列作成
    @category_parents_array = [{id: "---", name: "---"}]
    Category.find("#{@selected_parent_category.id}").siblings.each do |parent|
      parent_hash = {id: "#{parent.id}", name: "#{parent.name}"}
      @category_parents_array << parent_hash
    end
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
      flash[:alert] = "商品を編集しました。"
    else
      flash.now[:alert] = "編集できませんでした。"
      if @item.images.empty?
        @item.images.new
      end
      @selected_grandchild_category = Category.find(params[:item][:category_id])
      # 孫カテゴリー選択肢用の配列作成
      @category_grandchildren_array = [{id: "---", name: "---"}]
      Category.find("#{@selected_grandchild_category.id}").siblings.each do |grandchild|
        grandchildren_hash = {id: "#{grandchild.id}".to_i, name: "#{grandchild.name}"}
         @category_grandchildren_array << grandchildren_hash
      end
      # 選択されている子カテゴリーのレコードを取得
      @selected_child_category = @selected_grandchild_category.parent
      # 子カテゴリー選択肢用の配列作成
      @category_children_array = [{id: "---", name: "---"}]
      Category.find("#{@selected_child_category.id}").siblings.each do |child|
        children_hash = {id: "#{child.id}", name: "#{child.name}"}
        @category_children_array << children_hash
      end
      # 選択されている親カテゴリーのレコードを取得
      @selected_parent_category = @selected_child_category.parent
      # 親カテゴリー選択肢用の配列作成
      @category_parents_array = [{id: "---", name: "---"}]
      Category.find("#{@selected_parent_category.id}").siblings.each do |parent|
        parent_hash = {id: "#{parent.id}", name: "#{parent.name}"}
        @category_parents_array << parent_hash
      end
      render :edit
    end
  end

def destroy
  item = Item.find_by(id:params[:id])
  if item.saler_id == current_user.id && item.destroy
    redirect_to root_path
  end
end

  def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :status, :delivery_charge, :address, :date, :detail, :brand, :buyer_id, :category_id, images_attributes: [:url, :_destroy, :id]).merge(saler_id: current_user.id )
  end

  def defolt_category
    @parents = Category.all.order("id ASC").limit(13)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_category_parent_array
    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
  end
end

