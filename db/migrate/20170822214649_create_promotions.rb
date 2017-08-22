class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :day_of_week
      t.time :time
      t.integer :price
      t.string :dealcode

      t.timestamps
    end
  end
end
