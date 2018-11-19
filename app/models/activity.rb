class Activity < ApplicationRecord
  belongs_to :category
  has_many :events, dependent: :destroy
  has_many :activity_tags
  has_many :tags, through: :activity_tags
  has_many :wishes
  has_many :users, through: :wishes
end
