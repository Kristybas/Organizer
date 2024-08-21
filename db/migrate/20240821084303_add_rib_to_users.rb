class AddRibToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :rib, :string
  end
end
