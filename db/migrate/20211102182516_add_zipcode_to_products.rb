class AddZipcodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :zip_code, :string
    add_column :products, :string, :string
  end
end
