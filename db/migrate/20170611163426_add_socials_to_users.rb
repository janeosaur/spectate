class AddSocialsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :cover_photo, :string
  end
end
