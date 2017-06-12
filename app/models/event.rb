class Event < ApplicationRecord
  belongs_to :owner, optional: true
  has_many :event_teams, dependent: :destroy
  has_many :teams, through: :event_teams

  validates :name, :presence=>true, :uniqueness=>true

  extend FriendlyId
  friendly_id :name, use: [:slugged]

  geocoded_by :city
  after_validation :geocode


end
