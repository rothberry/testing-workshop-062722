class Astronaut < ApplicationRecord
  has_many :missions
  has_many :planets, through: :missions

  validates :name, :position, presence: true

  def split_name
    self.name.split(" ")
  end
  
end
