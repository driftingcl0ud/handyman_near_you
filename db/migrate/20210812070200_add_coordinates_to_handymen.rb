class AddCoordinatesToHandymen < ActiveRecord::Migration[6.0]
  def change
    add_column :handymen, :latitude, :float
    add_column :handymen, :longitude, :float
  end
end
