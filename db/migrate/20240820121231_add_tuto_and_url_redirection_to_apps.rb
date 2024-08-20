class AddTutoAndUrlRedirectionToApps < ActiveRecord::Migration[7.1]
  def change
    add_column :apps, :tuto, :string
    add_column :apps, :url_redirection, :string
  end
end
