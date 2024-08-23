class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :apps
         has_many :user_apps


  def encrypt_rib
    rib.gsub(/.(?=.{3})/, '*')
  end
end
