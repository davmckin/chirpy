class User < ApplicationRecord
  has_secure_password
  has_secure_token

  acts_as_followable
  acts_as_follower
  acts_as_liker
  acts_as_mentionable
  acts_as_mentioner

  has_many :chirps, dependent: :destroy

  validates :name, presence: true
  validates :username, presence: true
  # , uniqueness: true

end
