class User < ApplicationRecord
  has_many :events
  has_many :favorites
  has_many :favorite_events, through: :favorites, source: :favorited, source_type: 'Event'
  # has_many :favorite_teams, through: :favorites, source: :favorited, source_type: 'Team'
  # has_many :favorite_players, through: :favorites, source: :favorited, source_type: 'Player'

  validates :photo, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: ': must be a URL for GIF, JPG or PNG image.' }
  validates :cover_photo, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: ': must be a URL for GIF, JPG or PNG image.' }
  # validates :twitter, allow_blank: true, format: { with: #enter regexp here, message: ': just the username please'}
  # validates :instagram, allow_blank: true,


  extend FriendlyId
  friendly_id :username, use: :slugged

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence=>true, :uniqueness=>true
  validates :email, :uniqueness=>true

end
