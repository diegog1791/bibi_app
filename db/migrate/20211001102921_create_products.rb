class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.text :photos
      t.text :title
      t.integer :value
      t.integer :daily_price
      t.integer :weekly_price
      t.integer :monthly_price
      t.integer :minimum_day_rent
      t.text :description

      t.timestamps
    end
  end
end
