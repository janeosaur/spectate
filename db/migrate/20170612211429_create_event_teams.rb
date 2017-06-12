class CreateEventTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :event_teams do |t|

      t.timestamps

      t.belongs_to :event
    end
  end
end
