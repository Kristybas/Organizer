class ChangeUrlRedirectionFromApps < ActiveRecord::Migration[7.1]
  def change
    remove_column :apps, :url_redirection
    add_column :apps, :url_redirections, :jsonb, default: {} # remplacer les {} par [] pour array
  end
end
