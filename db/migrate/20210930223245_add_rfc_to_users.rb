class AddRfcToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rfc, :string
  end
end
