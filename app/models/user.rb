class User < ApplicationRecord
  before_save { self.email = email.downcase }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true, length: { maximum: 50 }

  # 大文字・小文字を区別しない 一意生を担保する
  validates :email, uniqueness: { case_sensitive: false }

  # introductionは255文字以内に指定
  validates :introduction, length: {maximum: 255}

  # アップローダーを紐付け
  mount_uploader :image, ImageUploader
end
