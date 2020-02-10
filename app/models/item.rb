class Item < ApplicationRecord
  
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :comments
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :saler, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
  
  validates :images, presence: 
                            {
                              message: "画像がありません"
                            }

  validates :name, presence: true,
                    length: {
                      minimum: 1, maximum: 40,
                      message: "入力してください"
                    }

  validates :detail, presence: true,
                      length: {
                        minimum: 1, maximum: 1000,
                        message: "入力してください"
                      }

  validates :status, presence: 
  {
    message: "選択してください"
  }
  
  validates :delivery_charge, presence: 
  {
    message: "選択してください"
  }

  validates :address, presence: 
  {
    message: "選択してください"
  }

  validates :date, presence: 
  {
    message: "選択してください"
  }
  
  validates :price, presence: true,
                      numericality: {
                        greater_than_or_equal_to: 300,less_than_or_equal_to: 9999999,
                        message: "販売価格は300以上9,999,999以内で入力してください"
                      }

  # belongs_to :category
  enum status:{
    "---":0,
    新品、未使用:1,未使用に近い:2,目立った傷や汚れなし:3,やや傷や汚れなし:4,傷や汚れなし:5,
  },_prefix: true

  enum delivery_charge:{
    "---":0,
    "送料込み(出品者負担)":1,"着払い(購入者負担)":2
  },_prefix: true

  enum address:{
    "---":0,
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47,
  },_prefix: true

  enum date:{
    "---":0,
    "1~2日で発送":1, "2~3日で発送":2, "4~7日で発送":3,
  },_prefix: true
  
end
