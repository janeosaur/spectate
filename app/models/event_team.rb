class EventTeam < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :event, optional: true
end
