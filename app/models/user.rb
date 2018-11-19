class User < ApplicationRecord
  has_many :hostings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :messages
  has_many :wishes, dependent: :destroy
  has_many :activities, through: :wishes
  has_many :events, through: :hostings
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
