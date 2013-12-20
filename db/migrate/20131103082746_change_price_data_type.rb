class ChangePriceDataType < ActiveRecord::Migration
  def up
    change_column :products, :price, :decimal
  end

  def down
  end
end
