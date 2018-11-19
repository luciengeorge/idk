class Tag < ApplicationRecord
  has_many :activity_tags, dependent: :destroy
  has_many :activities, through: :activity_tags
end
