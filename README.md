# table設計

  users table

| Column              | Type   | Options                 |
| ------------------- | ------ | ----------------------- |
| nickname            | string | null:false  unique:true |
| first_name          | string | null:false              |
| last_name           | string | null:false              |
| first_name_katakana | string | null:false              |
| last_name_katakana  | string | null:false              |
| birthday            | date   | null:false              |
| email               | string | null:false  unique:true |
| password            | string | null:false              |

  Association

- has_many :items
- has_many :comments


  items table

| Column              | Type       | Options                      |
| ------------------- | ---------- | ---------------------------- |
| name                | string     | null:false                   |
| explanation         | text       | null:false                   |
| category_id         | integer    | null:false                   |
| brand_name          | string     |                              |
| item_status         | integer    | null:false                   |
| action_status       | integer    | null:false                   |
| delivery_fee        | integer    | null:false                   |
| shopping_origin     | integer    | null:false                   |
| days_until_shopping | integer    | null:false                   |
| exhibition_price    | integer    | null:false                   |
| user_id             | integer    | null:false                   |

  Association

- belongs_to :users
- has_many   :comments


  address table

| Column        | Type       | Options                      |
| ------------- | ---------- | ---------------------------- |
| user_id       | references | null:false  foreign_key:true |
| post_code     | string     | null:false                   |
| prefecture    | string     | null:false                   |
| city          | string     | null:false                   |
| building_name | string     |                              |
| phone_number  | string     |                              |

  Association

- belongs_to :users


  comments table

| Column  | Type       | Options                      |
| ------- | ---------- | ---------------------------- |
| comment | text       | null:false                   |
| user_id | references | null:false  foreign_key_true |
| item_id | references | null:false  foreign_key_true |

  Association

- belongs_to :users
- belongs_to :items