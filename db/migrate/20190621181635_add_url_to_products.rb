class AddUrlToProducts < ActiveRecord::Migration[5.2]

  def self.up
    add_column :products, :pic_url, :text
  end

  def self.down
    remove_column :products, :pic_url, :text
  end

end
