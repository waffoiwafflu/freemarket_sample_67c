# フリマアプリ DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|first-name|string|null: false|
|second-name|string|null: false|
|first-name-kana|string|null: false|
|second-name-kana|string|null: false|
|birthday|datetime|null: false|
|phone-number|string|null: false|
|nicname|integer|null: false|
|e-mail|string|null: false|
|password|string|null: false|

### Association
- has_many :address
- has_many :credits
- has_many :items
- has_many :comments

## addressテーブル

|Column|Type|Options|
|------|----|-------|
|rejion|string|null: false|
|mmunicipality|string|null: false|
|street・mmansion|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

## creditsテーブル

|Column|Type|Options|
|------|----|-------|
|card-number|integer|null: false|
|deadline|datetime|null: false|
|security|integer|null: false|
|first-name-roma|string|null: false|
|second-name-roma|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|states|string|null: false|
|delivery-charge|integer|null: false|
|addless|string|null: false|
|price|integer|null: false|
|detail|text|null: false|
|image|string|null: false|
|date|date|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|saler_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|

### Association
- has_many :categorys,  through:  :items-categorys
- has_many :brands
- has_many :comments
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- belongs_to :saler, :class_name: "User"
- belongs_to :buyer, :class_name: "User"


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|


### Association
- has_many :items,  through:  :items-categorys
- belongs_to :user
- belongs_to :item


## items-categorysテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :category

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand-name|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- has_many :items
- belongs_to :product


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item