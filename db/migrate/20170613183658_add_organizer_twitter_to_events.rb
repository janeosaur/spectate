class AddOrganizerTwitterToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :organizer_twitter, :string
  end
end
