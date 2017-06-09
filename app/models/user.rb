class User < ApplicationRecord
  has_many :events

  extend FriendlyId
  friendly_id :username, use: [:slugged, :finders]
  # adding :finders allows MyClass.find('bar') instead of MyClass.friendly.find('bar')

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence=>true, :uniqueness=>true
  validates :email, :uniqueness=>true

end
