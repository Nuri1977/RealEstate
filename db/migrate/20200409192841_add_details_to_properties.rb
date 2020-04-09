class AddDetailsToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :details, :text
  end
end
