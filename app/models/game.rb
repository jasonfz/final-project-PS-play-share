class Game < ApplicationRecord

    belongs_to :user
    has_many :topics, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :rentals, dependent: :destroy
  


end
