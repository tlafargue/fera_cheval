class Booking < ApplicationRecord
  belongs_to :horse
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true, inclusion: { in: ['pending', 'approved', 'declined'] }
end
