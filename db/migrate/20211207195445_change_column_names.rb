class ChangeColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :country, :bb_country
    rename_column :users, :country_code, :bb_country_code
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
