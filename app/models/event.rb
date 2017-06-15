class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :event_teams, dependent: :destroy
  has_many :teams, through: :event_teams

  validates :name, :presence=>true, :uniqueness=>true
  validates :organizer, :date, :date_end, :venue, :city, :country, :image, :stream, :tickets, :stadium, :country, :organizer_twitter, :presence=>true

  extend FriendlyId
  friendly_id :name, use: [:slugged]

  geocoded_by :city
  after_validation :geocode

end
