class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :favorites
has_many :comments
has_one :cart
has_many :shipping_addresses

attachment :profile_image
attachment :favorite_people_image

validates :user_name, presence: true, length: { maximum: 50 }
validates :user_name_phonetic, presence: true , length: { maximum: 50 }
validates :postal_code, presence: true
validates :address, presence: true
validates :phone_number, presence: true
validates :favorite_people, length: { maximum: 150 }
# validates :email, presence: true
# validates :password, presence: true

include JpPrefecture
  jp_prefecture :prefecture_code
  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end
  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end