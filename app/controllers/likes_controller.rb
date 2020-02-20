class LikesController < ApplicationController
  before_action :set_item, only: [:create, :destory]
  def create

    if @like = Like.create(user_id: current_user.id, item_id: params[:item_id])
      flash[:alert] = "いいねしました"
    else
      flash.now[:alert] = "いいねできませんでした"
    end
    @like.reload
    @likes = Like.where(item_id: params[:item_id])
    # set_item
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
    if like.destroy
      flash[:alert] = "いいね削除しました"
    else
      flash.now[:alert] = 'いいね削除できませんでした。'
    end
    @likes = Like.where(item_id: params[:item_id])
    # set_item
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
