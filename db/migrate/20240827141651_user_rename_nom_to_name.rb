class UserRenameNomToName < ActiveRecord::Migration[7.1]
  def change
    rename_column :apps, :nom, :name
  end
end
