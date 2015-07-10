class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :latitude, :int
      t.column :longitude, :int
      t.column :sighting_date, :datetime

    end
    # t.column :region_id, :int
    # t.column :species_id, :int
    # add_foreign_key :sightings,  #this will put a species id on sightings table
    # add_foreign_key :sightings, :region
  end

end
