# フリマアプリ DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|datetime|null: false|
|phone_number|string|null: false|
|nicname|integer|null: false|
|e_mail|string|null: false|
|password|string|null: false|

### Association
- has_one :address
- has_one :credits
- has_many :items
- has_many :comments


## addressテーブル

|Column|Type|Options|
|------|----|-------|
|region|string|null: false|
|municipality|string|null: false|
|street_mansion|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## creditsテーブル

|Column|Type|Options|
|------|----|-------|
|card_number|integer|null: false|
|deadline|datetime|null: false|
|security|integer|null: false|
|first_name_roma|string|null: false|
|last_name_roma|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|status|integer|enum|
|delivery_charge|integer|enum|
|address|integer|enum|
|price|integer|enum|
|date|integer|enum|
|detail|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|saler_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|


### Association
- has_many :images
- has_many :comments
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- belongs_to :saler, :class_name: "User"
- belongs_to :buyer, :class_name: "User"


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :items
- has_ancestry

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|url|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item








= render "user-header"
-# 
= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f|
  .user-wrapper
    .user-menter-wrapper
      .user-menter-top
        会員情報入力
      .user-menter-bottom
        .user-menter-bottom__a
          .user-menter-bottom__a__nickname
            .user-menter-bottom__a__nickname__moji
              .user-menter-bottom__a__nickname__moji__nickname
                ニックネーム
              .user-menter-bottom__a__nickname__moji__hissu 
                必須
            = f.text_field :nickname, class: "user-menter-nickname", placeholder: "例）メルカリ太郎"
          .user-menter-bottom__a__mailadress
            .user-menter-bottom__a__mailadress__moji
              .user-menter-bottom__a__mailadress__moji__mailadress
                メールアドレス
              .user-menter-bottom__a__mailadress__moji__hissu
                必須
            = f.text_field :email, class: "user-menter-mailadress", placeholder: "PC・携帯どちらでも可"
          .user-menter-bottom__a__password
            .user-menter-bottom__a__password__moji
              .user-menter-bottom__a__password__moji__password
                パスワード
              .user-menter-bottom__a__password__moji__hissu
                必須
            = f.password_field :encrypted_password, class: "user-menter-password", placeholder: "7文字以上の半角英数字"
            .user-menter-bottom__a__password__moji__settei
              ※ 英字と数字の両方を含めて設定してください
          .user-menter-bottom__a__checkbox
          .user-menter-bottom__a__password
            .user-menter-bottom__a__password__moji
              .user-menter-bottom__a__password__moji__password
                パスワード
              .user-menter-bottom__a__password__moji__hissu
                必須
            = f.password_field :encrypted_password, class: "user-menter-password", placeholder: "7文字以上の半角英数字"
            .user-menter-bottom__a__password__moji__settei

            .user-menter-bottom__a__checkbox__password
          .user-menter-bottom__a__group
            .user-menter-bottom__a__group__honnin
              本人確認
            .user-menter-bottom__a__group__ansin
              安心・安全にご利用いただくために、お客さまの本人情報の登録にご協力ください。他のお客さまに公開されることはありません。
          .user-menter-bottom__a__name
            .user-menter-bottom__a__name__hiragana
              .user-menter-bottom__a__name__hiragana__name
                お名前(全角)
              .user-menter-bottom__a__name__hiragana__hissu
                必須
            .user-menter-bottom__a__name__form
              = f.text_field :first_name, class: "user-menter-name", placeholder: "例) 山田"
              = f.text_field :last_name, class: "user-menter-name-last", placeholder: "例) 太郎"
          .user-menter-bottom__a__name
            .user-menter-bottom__a__name__hiragana
              .user-menter-bottom__a__name__hiragana__name
                お名前カナ(全角)
              .user-menter-bottom__a__name__hiragana__hissu
                必須
            .user-menter-bottom__a__name__form
              = f.text_field :first_name, class: "user-menter-name", placeholder: "例) ヤマダ"
              = f.text_field :last_name_kana, class: "user-menter-name-last", placeholder: "例) タロウ"
          .user-menter-bottom__a__name
            .user-menter-bottom__a__name__hiragana
              .user-menter-bottom__a__name__hiragana__name
                生年月日
              .user-menter-bottom__a__name__hiragana__hissu
                必須
            .user-menter-bottom__a__name__birthday
              = f.text_field :year, class: "user-year-aaa"
              .user-menter-bottom__a__name__birthday__nihon
                年
              = f.text_field :month, class: "user-year-aaa"
              .user-menter-bottom__a__name__birthday__nihon
                月
              = f.text_field :day, class: "user-year-aaa"
              .user-menter-bottom__a__name__birthday__nihon
                日
  .user-wrapper
    .user-wrapper-new-c
      .user-menter-bottom
        = form_for new_user_registration_path, {html: {class: 'user-menter-bottom__a'}} do |f|
          .user-menter-bottom__a__nickname
            .user-menter-bottom__a__nickname__moji
              .user-menter-bottom__a__nickname__moji__nickname
                携帯電話の番号
            = f.phone_field :phone_number, class: "user-menter-nickname", placeholder: "携帯の番号を入力"
            .user-menter-bottom__a__group__ansin__b
              本人確認のため、携帯電話のSMS(ショートメッセージサービス)を利用して認証を行います。
          .user-menter-bottom__a__information
            ※ 本人情報は正しく入力してください。会員登録後、修正するにはお時間を頂く場合があります。
            .user-menter-bottom__a__honninjouhou
              .user-menter-bottom__a__honninjouhou__b
                = link_to "電話番号の確認が必要な理由", root_path, class: "user-menter-bottom-jouhou" 
                .user-menter-bottom__a__honninjouhou__b__a
                  = link_to "#" do
                    = icon('fas', 'chevron-right', class: "user-morimori")
          .user-menter-bottom__a__next
            「次へ進む」のボタンを押すことにより、
            = link_to "利用規約", "#", class: "user-mori-mori"
            に同意したものとみなします
          .user-menter-bottom__a__submit-btn
            = f.submit '登録', class: "user-menter-submit-btn"
            

          .user-menter-bottom__a__honninjouhou
            .user-menter-bottom__a__honninjouhou__b
              = link_to "本人情報の登録について", root_path, class: "user-menter-bottom-jouhou" 
              .user-menter-bottom__a__honninjouhou__b__a
                = link_to "#" do
                  = icon('fas', 'chevron-right', class: "user-morimori")
          .user-menter-bottom__a__the
            This site is protected by reCAPTCHA and the Google 
            = link_to "Privacy Policy", "#", class: "user-menter-bottom-terms"
            and
            = link_to "Terms of Service","#", class: "user-menter-bottom-terms"
            apply.

  = render "user-footer"