class AddNomToUserApps < ActiveRecord::Migration[7.1]
  def change
    add_column :user_apps, :name, :string
  end
end
