class Event < ApplicationRecord
  belongs_to :owner

  extend FriendlyID
  friendly_id :name, use: :slugged
  
end
