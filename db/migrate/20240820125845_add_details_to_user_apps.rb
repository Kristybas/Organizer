class AddDetailsToUserApps < ActiveRecord::Migration[7.1]
  def change
    add_column :user_apps, :phone, :string
    add_column :user_apps, :address, :string
    add_column :user_apps, :email, :string
    add_column :user_apps, :date_prelevement, :date
    add_column :user_apps, :date_renouvellement, :date
    add_column :user_apps, :montant, :integer
  end
end
