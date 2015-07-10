class Species < ActiveRecord::Base #sighting has one species and belongs to a region; a region has many sightings

  validates :name, :presence => true #a species has many sightings; a sighting has one species

  belongs_to :regions #todo whats the difference
  has_many :sightings
end