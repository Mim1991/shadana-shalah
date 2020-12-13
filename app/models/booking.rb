class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yoga_class
end
