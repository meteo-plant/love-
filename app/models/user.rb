class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 	include SearchUser
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :favorites
has_many :comments
has_one :cart
has_many :shipping_addresses


validates :user_name, presence: true, length: { maximum: 50 }
validates :user_name_phonetic, presence: true , length: { maximum: 50 }
validates :postal_code, presence: true
validates :address, presence: true
validates :phone_number, presence: true
validates :email, presence: true
validates :password, presence: true


  def soft_delete
    update(deleted_at: Time.now)
  end

  def active_for_authentication?
    !deleted_at
  end


end
