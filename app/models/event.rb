class Event < ApplicationRecord
  belongs_to :owner

  extend FriendlyId
  friendly_id :name, use: [:finders, :slugged]
  # adding :finders allows MyClass.find('bar') instead of MyClass.friendly.find('bar')

  validates :name, :presence=>true

end
