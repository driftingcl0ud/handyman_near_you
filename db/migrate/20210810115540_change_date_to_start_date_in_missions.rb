class ChangeDateToStartDateInMissions < ActiveRecord::Migration[6.0]
  def change
    rename_column :missions, :date, :start_date
  end
end
