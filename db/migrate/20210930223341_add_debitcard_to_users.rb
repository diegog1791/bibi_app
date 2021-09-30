class AddDebitcardToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :debit_card, :string
  end
end
