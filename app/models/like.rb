class Like < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :user, presence: true
  validates :event, presence: true
end
