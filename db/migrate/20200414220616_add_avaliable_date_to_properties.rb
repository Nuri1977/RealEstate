class AddAvaliableDateToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :avaliable_date, :datetime
  end
end
