class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :country
      t.string :twitter
      t.string :instagram
      t.string :photo
      t.string :role

      t.belongs_to :team

      t.timestamps
    end
  end
end
