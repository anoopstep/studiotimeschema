class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_many :slots, dependent: :destroy
  has_many :reviews, as: :reviewable
end
