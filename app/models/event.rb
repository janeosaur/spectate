class Event < ApplicationRecord
  belongs_to :owner, optional: true

  validates :name, :presence=>true, :uniqueness=>true

  extend FriendlyId
  friendly_id :name, use: [:slugged]

  geocoded_by :city
  after_validation :geocode



end
