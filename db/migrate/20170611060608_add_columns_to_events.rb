class AddColumnsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :type, :string
    add_column :events, :prize, :string
    add_column :events, :ticket_price, :string
    add_column :events, :alcohol, :string
  end
end
