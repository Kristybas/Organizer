class RemoveDetailsFromApps < ActiveRecord::Migration[7.1]
  def change
    remove_column :apps, :date_de_prelevement, :date
    remove_column :apps, :date_de_renouvellement, :date
    remove_column :apps, :montant, :decimal
    remove_column :apps, :status, :boolean
  end
end
