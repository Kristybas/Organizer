class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :apps
  has_many :user_apps

  has_one_attached :photo


         # Callback to encrypt RIB before saving

  def encrypt_rib
    if rib != nil
      rib.gsub(/.(?=.{3})/, '*')
    end
  end
end
