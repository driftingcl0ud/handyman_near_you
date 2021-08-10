class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.references :handyman, null: false, foreign_key: true
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
