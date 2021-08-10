class CreateHandymen < ActiveRecord::Migration[6.0]
  def change
    create_table :handymen do |t|
      t.string :job_title
      t.float :average_price
      t.boolean :availability
      t.references :user
      
      t.timestamps
    end
  end
end
