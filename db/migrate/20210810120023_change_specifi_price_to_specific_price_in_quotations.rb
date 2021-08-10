class ChangeSpecifiPriceToSpecificPriceInQuotations < ActiveRecord::Migration[6.0]
  def change
    rename_column :quotations, :specifi_price, :specific_price
  end
end
