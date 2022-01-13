class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_value, :integer
    add_column :products, :integer, :string
  end
end
