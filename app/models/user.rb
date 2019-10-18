class User < ApplicationRecord
  has_many :hostings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :messages
  has_many :wishes, dependent: :destroy
  has_many :activities, through: :wishes
  has_many :events
  has_many :followers, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable
  mount_uploader :photo, PhotoUploader
  after_create :send_confirmation_instructions
  include PgSearch
  pg_search_scope :search_by_firstname_and_lastname,
                  against: [:first_name, :last_name],
                  using: {
                    tsearch: { prefix: true }
                  }

  CO_FOUNDERS = %w[lucien@gmail.com izzy@gmail.com ife@gmail.com gaby@gmail.com].freeze
end
