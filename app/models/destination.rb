class Destination < ApplicationRecord
  belongs_to :user # userと1対1になる

  # 投稿が新しいものから取得できる
  default_scope -> { order(created_at: :desc) }


  validates :destination, presence: true, length: { maximum: 255 }
  validates :date, length: { maximum: 255 }
  validates :via1, length: { maximum: 255 }
  validates :via2, length: { maximum: 255 }
  validates :via3, length: { maximum: 255 }
  validates :via4, length: { maximum: 255 }
  validates :via5, length: { maximum: 255 }

  validates :url1, length: { maximum: 255 }
  validates :url2, length: { maximum: 255 }
  validates :url3, length: { maximum: 255 }
  validates :url4, length: { maximum: 255 }
  validates :url5, length: { maximum: 255 }
end
