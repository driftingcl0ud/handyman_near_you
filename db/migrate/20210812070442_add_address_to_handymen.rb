class AddAddressToHandymen < ActiveRecord::Migration[6.0]
  def change
    add_column :handymen, :address, :string
  end
end
