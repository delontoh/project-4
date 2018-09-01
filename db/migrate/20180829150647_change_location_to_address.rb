class ChangeLocationToAddress < ActiveRecord::Migration[5.2]
  def change
    remove_column(:events, :location)
    add_column(:events, :address, :string)
    add_column(:events, :longitude, :float)
    add_column(:events, :latitude, :float)
  end
end
