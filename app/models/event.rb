class Event < ApplicationRecord
  belongs_to :activity
  has_many :hostings, dependent: :destroy
  has_many :users, through: :hostings
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
