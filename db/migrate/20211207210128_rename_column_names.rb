class RenameColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :bb_country, :bb_coun_try
    rename_column :users, :bb_country_code, :bb_coun_try_code
  end
end
