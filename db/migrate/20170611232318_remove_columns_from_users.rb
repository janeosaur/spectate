class RemoveColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :fav_event, :string
    remove_column :users, :fav_player, :string
    remove_column :users, :fav_team, :string
  end
end
