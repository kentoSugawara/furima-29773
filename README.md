# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| family_name      | string | null: false |
| first_name       | string | null: false |
| family_name_kana | string | null: false |
| first_name_kana  | string | null: false |
| birthday         | date   | null: false |

- has_many :items
- has_many :address

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| image         | string     | null: false                    |
| name          | string     | null: false                    |
| text          | text       | null: false                    |
| category      | integer    | null: false                    |
| state         | integer    | null: false                    |
| postage       | integer    | null: false                    |
| region        | integer    | null: false                    |
| shipping_days | integer    | null: false                    |
| price         | integer    | null: false                    |

- belongs_to :user
- has_one :order

## orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

- belongs_to :addres
- belongs_to :item

## address テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| postal       | string     | null: false                    |
| prefecture   | integer    | null: false                    |
| city         | string     | null: false                    |
| address1     | string     | null: false                    |
| address2     | string     |                                |
| phone_number | string     | null: false                    |

- belongs_to :user
- has_one :oder