class Planet < ApplicationRecord
  has_many :missions
  has_many :astronauts, through: :missions

  validates :name, uniqueness: true
end
