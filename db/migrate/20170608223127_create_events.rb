class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.date :date
      t.string :venue
      t.integer :min_age
      t.string :stream
      t.string :tickets
      t.string :size
      t.boolean :stadium
      t.boolean :vip_tickets
      t.boolean :food_drinks
      t.boolean :merch_sold

      t.timestamps
    end
  end
end
