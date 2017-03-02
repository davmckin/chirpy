class User < ApplicationRecord
  has_secure_password
  has_secure_token

  has_many :chirps

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

end
