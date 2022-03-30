class Destination < ApplicationRecord
  belongs_to :user # userと1対1になる

  # 投稿が新しいものから取得できる
  default_scope -> { order(created_at: :desc) }
end
