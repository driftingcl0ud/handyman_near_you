class AddDescriptionToHandymen < ActiveRecord::Migration[6.0]
  def change
    add_column :handymen, :description, :text
  end
end
