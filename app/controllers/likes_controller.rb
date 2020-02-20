class LikesController < ApplicationController
  
  def create
    if @like = Like.create(user_id: current_user.id, item_id: params[:item_id])
    else
      flash.now[:alert] = 'いいねできませんでした。'
    end
    @like.reload
    @likes = Like.where(item_id: params[:item_id])
    set_item
   
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
    like.destroy
    @likes = Like.where(item_id: params[:item_id])
    set_item
    if like.destroy
    else
      flash.now[:alert] = 'いいね削除できませんでした。'
    end
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
