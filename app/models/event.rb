class Event < ApplicationRecord
  belongs_to :activity
  has_many :hostings, dependent: :destroy
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
