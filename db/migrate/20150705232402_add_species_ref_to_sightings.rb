class AddSpeciesRefToSightings < ActiveRecord::Migration
  def change
    add_reference :sightings, :species, index: true, foreign_key: true
  end
end
