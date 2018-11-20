class Wish < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates_uniqueness_of :user, scope: :activity
end
