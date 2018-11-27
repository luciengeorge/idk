class Activity < ApplicationRecord
  belongs_to :category
  has_many :events, dependent: :destroy
  has_many :activity_tags, dependent: :destroy
  has_many :tags, through: :activity_tags
  has_many :wishes, dependent: :destroy
  has_many :users, through: :wishes
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  acts_as_mappable default_units: :kms,
                   default_formula: :sphere,
                   distance_field_name: :distance,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude
  include PgSearch
  pg_search_scope :search_by_activity_info,
                  against: [:location],
                  associated_against: {
                    tags: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
