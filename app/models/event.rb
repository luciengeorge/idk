class Event < ApplicationRecord
  belongs_to :activity
  has_many :hostings, dependent: :destroy
  has_many :users, through: :hostings
end
