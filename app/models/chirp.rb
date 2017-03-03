class Chirp < ApplicationRecord
  belongs_to :user

  acts_as_likeable
  validates :body, presence: true, length: { maximum: 160 }

end
