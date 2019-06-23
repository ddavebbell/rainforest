class AddUrlToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :pic_url, :string
  end
end
