class User < ApplicationRecord
  has_many :studios
  has_many :bookings
  has_many :reviews, as: :reviewable
  has_many :verifications

  has_one_attached :profile_picture

end
