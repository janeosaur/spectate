class Player < ApplicationRecord
  belongs_to :owner, optional: true
end
