class AddHandymanMissions < ActiveRecord::Migration[6.0]
  def change
    add_reference :missions, :handyman, foreign_key: :true
  end
end
