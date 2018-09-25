class FixTokenColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :token, :auth_token
  end
end
