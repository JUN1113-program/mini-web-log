## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email-address|string|null: false,unique: true|
|password|string|null: false|

### Association
- has_many :blogs
- has_many :comments
- has_one_attached :avatar

## blogsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false, add_index|
|content|text|null: false, add_index|
|view_num|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments
- has_many :images

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|rate|integer||
|content|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|blog_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :blog

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|blog_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :blog