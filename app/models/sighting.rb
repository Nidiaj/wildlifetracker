class Sighting < ActiveRecord::Base

  # sighting date, latitude, longitude
  has_one :species
  belongs_to :region

  validates :sighting_date, presence: true
  validates_inclusion_of :latitude, in: -90..90
  validates_inclusion_of :longitude, in: -180..180 #snake case
end