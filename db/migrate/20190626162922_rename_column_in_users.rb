class RenameColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :email
  end
end
