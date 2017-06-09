class User < ApplicationRecord
  has_many :events

  extend FriendlyID
  friendly_id :username, use: :slugged


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
