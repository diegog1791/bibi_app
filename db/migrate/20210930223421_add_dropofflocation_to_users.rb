class AddDropofflocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :drop_off_location, :text
  end
end
