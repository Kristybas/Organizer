class CreateApps < ActiveRecord::Migration[7.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.date :date_de_prelevement
      t.date :date_de_renouvellement
      t.decimal :montant
      t.boolean :status

      t.timestamps
    end
  end
end
