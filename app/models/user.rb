class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :apps
         has_many :user_apps


         # Callback to encrypt RIB before saving

  def encrypt_rib
    if rib != nil
      rib.gsub(/.(?=.{2})/, '*')
    end
  end
end
