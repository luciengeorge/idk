class Event < ApplicationRecord
  belongs_to :activity
  has_many :hostings
  has_many :users, through: :hostings
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
