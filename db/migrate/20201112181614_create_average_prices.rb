class CreateAveragePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :average_prices do |t|
      t.integer :price

      t.timestamps
    end
  end
end
