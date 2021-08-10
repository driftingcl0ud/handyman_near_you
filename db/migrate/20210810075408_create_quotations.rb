class CreateQuotations < ActiveRecord::Migration[6.0]
  def change
    create_table :quotations do |t|
      t.references :handyman, foreign_key: true
      t.string :handyman_description
      t.float :specifi_price
      t.references :mission, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
