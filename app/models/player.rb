class Player < ApplicationRecord
  belongs_to :owner, optional: true

  extend FriendlyId
  friendly_id :gamer_tag, use: [:slugged]
  
end
