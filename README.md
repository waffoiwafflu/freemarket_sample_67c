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
- has_many :address
- has_many :credits
- has_many :items
- has_many :comments

## addressテーブル

|Column|Type|Options|
|------|----|-------|
|rejion|string|null: false|
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
|states|integer|enum|
|delivery_charge|integer|enum|
|addless|integer|enum|
|price|integer|enum|
|date|integer|enum|
|detail|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|saler_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|

### Association
- has_many :brands
- has_many :pics
- has_many :comments
- belongs_to :user
- belongs_to :saler, :class_name: "User"
- belongs_to :buyer, :class_name: "User"


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|
|women|integer|null: false|
|mens|integer|null: false|
|baby_kids|integer|null: false|
|interior_housing_accessories|integer|null: false|
|books_music_games|integer|null: false|
|toys_hobby_goods|integer|null: false|
|cosmetics_perfume_beauty|integer|null: false|
|appliances_smartphones_cameras|integer|null: false|
|sport_leisure|integer|null: false|
|hand_made|integer|null: false|
|ticket|integer|null: false|
|cars_motorcycles|integer|null: false|
|other|integer|null: false|

### Association

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_name|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## picsテーブル
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