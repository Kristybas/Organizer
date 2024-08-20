class AddRibToUserApps < ActiveRecord::Migration[7.1]
  def change
    add_column :user_apps, :rib, :string
  end
end
