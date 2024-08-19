class CreateBanques < ActiveRecord::Migration[7.1]
  def change
    create_table :banques do |t|
      t.string :nom
      t.string :rib
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
