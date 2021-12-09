class AddNewColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :country_code, :string
    add_column :users, :neighborhood, :text
    add_column :users, :zip_code, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
  end
end
