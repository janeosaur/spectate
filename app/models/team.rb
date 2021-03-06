class Team < ApplicationRecord
  has_many :event_teams
  has_many :events, through: :event_teams
  has_many :players

  extend FriendlyId
  friendly_id :name, use: [:slugged]

end
