class UserApp < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :app

  # Validations (si nécessaires)
  validates :user_id, presence: true
  validates :app_id, presence: true
  # Ajoute d'autres validations si nécessaire
  def encrypt_rib
    if rib != nil
      rib.gsub(/.(?=.{2})/, '*')
    end
  end
  # Autres méthodes et logiques liées à UserApp
end
