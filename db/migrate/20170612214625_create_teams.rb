class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :country
      t.string :founded_in
      t.string :logo
      t.string :twitter

      t.timestamps
    end
  end
end
