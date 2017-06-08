class AddCustomToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :country, :string
    add_column :users, :fav_event, :string
    add_column :users, :fav_player, :string
    add_column :users, :fav_team, :string
    add_column :users, :admin, :boolean, default: false
  end
end
