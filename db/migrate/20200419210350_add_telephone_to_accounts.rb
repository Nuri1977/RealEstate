class AddTelephoneToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :telephone, :string
  end
end
