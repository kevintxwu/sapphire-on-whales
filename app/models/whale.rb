class Whale < ActiveRecord::Base
  has_many :sapphires
  validates :name, presence: true
  validates :color, presence: true
end
