class AddCreditcardToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :credit_card, :string
  end
end
