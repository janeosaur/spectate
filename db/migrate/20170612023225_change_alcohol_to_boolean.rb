class ChangeAlcoholToBoolean < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :alcohol, "boolean USING CAST(alcohol AS boolean)"
  end
end
