class AddRentPriceToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :rent_price, :integer, default: 0
  end
end
