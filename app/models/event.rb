class Event < ApplicationRecord
  belongs_to :owner, optional: true

  extend FriendlyId
  friendly_id :name, use: [:slugged]

  validates :name, :presence=>true

end
