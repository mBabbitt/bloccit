class AddEmailPermissionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_favorites, :boolean: true
  end
end
