class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def show
    @parents = Category.all.order("id ASC").limit(13)
    @likes = current_user.likes.limit(3)
    @items = @likes.map{|like| like.item}
  end

  def create
    redirect_to root_path
  end

  def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

end
