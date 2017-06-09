class AddUserreferenceToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :user, index: true, foreign_key: true
  end
end