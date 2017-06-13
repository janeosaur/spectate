class AddGamertagToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :gamer_tag, :string
  end
end
