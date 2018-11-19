class Event < ApplicationRecord
  belongs_to :activity
  has_many :hostings
  has_many :users, through: :hostings
end
