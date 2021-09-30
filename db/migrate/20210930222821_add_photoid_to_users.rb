class AddPhotoidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :photo_id, :string
  end
end
