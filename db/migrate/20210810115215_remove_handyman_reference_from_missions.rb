class RemoveHandymanReferenceFromMissions < ActiveRecord::Migration[6.0]
  def change
    remove_column :missions, :handyman_id
  end
end
