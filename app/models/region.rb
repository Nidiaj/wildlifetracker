class Region < ActiveRecord::Base
  #name = string
  has_many :sightings
  has_many :species

  validates :name, presence: true
end