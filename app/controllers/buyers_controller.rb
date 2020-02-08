class BuyersController < ApplicationController

  require 'payjp'

  def index
    card = Card.where(user_id:current_user.id).first #cardテーブルからpayjpの顧客IDを検索
    if card.blank?
      redirect_to controller: "cards", action: "new"
    else
      Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(card.customer_id) #カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
    :amount => 1000, #支払金額を入力
    :customer => card.customer_id,
    :currency => 'jpy',
  )
  redirect_to action: 'done' #完了画面に移動
  end

  def done
    @item_buyer = Item.find(params[id])
    @item_buyer.updete( buyer_id: current_user.id)
  end
end
