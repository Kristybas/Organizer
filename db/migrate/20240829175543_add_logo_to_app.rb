class AddLogoToApp < ActiveRecord::Migration[7.1]
  def change
    add_column :apps, :logo, :string
  end
end
