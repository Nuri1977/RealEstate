class AddParkingPlacesToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :parking_space, :integer, default: 0
  end
end
